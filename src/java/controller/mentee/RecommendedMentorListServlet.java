package controller.mentee;

import Dao.*;
import Model.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

@WebServlet(name = "RecommendedMentorListServlet", urlPatterns = {"/recommended-mentor-list"})
public class RecommendedMentorListServlet extends HttpServlet {

    private final CVDAO cvDao = new CVDAO();
    private final RequestDAO requestDao = new RequestDAO();
    private final SkillDAO skillDao = new SkillDAO();
    private final CvSkillDAO cvSkillDao = new CvSkillDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        var session = request.getSession();
        if (session.getAttribute("user") == null) {
            request.setAttribute("error", "Access denied");
            request.getRequestDispatcher("./view/error.jsp").forward(request, response);
            return;
        }
        User user = (User) session.getAttribute("user");
        List<CV> cvList = cvDao.getAllCVs();
        List<Skill> skillList = skillDao.getAllSkills();
        List<CV> recommendedMentors = new ArrayList<>();
        ArrayList<Request> requestList = requestDao.getAllVisibleRequestsWithMenteeId("", user.getUserId());
        HashMap<Integer, Integer> requestCount = new HashMap<>();
        for (Skill skill : skillList) {
            requestCount.put(skill.getSkillId(), 0);
        }
        for (Request r : requestList) {
            for (int skillId : requestDao.getSkillByRequestId(r.getRequestId())) {
                requestCount.put(skillId, requestCount.get(skillId) + 1);
            }
        }
        requestCount = requestCount.entrySet()
                .stream()
                .sorted((entry1, entry2) -> entry2.getValue().compareTo(entry1.getValue()))
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        Map.Entry::getValue,
                        (e1, e2) -> e1,
                        LinkedHashMap::new
                ));
        Integer mostRequestedSkill = requestCount.keySet().stream().findFirst().orElse(null);
        for (CV cv : cvList) {
            if (cvSkillDao.getCvSkillsByCvId(cv.getCvId()).contains(mostRequestedSkill)) {
                recommendedMentors.add(cv);
            }
        }

        request.setAttribute("mentorList", recommendedMentors);
        request.getRequestDispatcher("./view/mentee/list-recommended-mentors.jsp").forward(request, response);
    }
}
