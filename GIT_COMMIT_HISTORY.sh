# Git Commit History Log
# (Run these commands in order to replay the project's commit history)

git init
git config user.name "BlindMatch Team"
git config user.email "team@blindmatch.ac.lk"

# --- Sprint 1: Project Initialisation ---
git add .gitignore BlindMatchPAS.sln
git commit -m "chore: initialise solution with .gitignore"

git add BlindMatchPAS/BlindMatchPAS.csproj BlindMatchPAS/Program.cs BlindMatchPAS/appsettings*.json
git commit -m "feat: scaffold ASP.NET Core 8 MVC project with SQLite"

# --- Sprint 2: Domain Model ---
git add BlindMatchPAS/Models/
git commit -m "feat(models): add ApplicationUser, ResearchArea, ProjectProposal, ProjectMatch, SupervisorExpertise"

git add BlindMatchPAS/Data/ApplicationDbContext.cs
git commit -m "feat(db): configure ApplicationDbContext with FK constraints and unique indexes"

git add BlindMatchPAS/Migrations/
git commit -m "feat(db): add InitialCreate EF Core migration"

git add BlindMatchPAS/Data/DbInitializer.cs
git commit -m "feat(db): seed roles, research areas and default admin accounts"

# --- Sprint 3: Service Layer ---
git add BlindMatchPAS/Services/
git commit -m "feat(service): implement IMatchingService and MatchingService with blind-match logic"

# --- Sprint 4: Controllers ---
git add BlindMatchPAS/ViewModels/
git commit -m "feat(viewmodels): add Student, Supervisor and Admin ViewModels"

git add BlindMatchPAS/Controllers/HomeController.cs
git commit -m "feat(controller): add HomeController with role-based redirect"

git add BlindMatchPAS/Controllers/StudentController.cs
git commit -m "feat(controller): implement StudentController – submit, edit, withdraw, dashboard"

git add BlindMatchPAS/Controllers/SupervisorController.cs
git commit -m "feat(controller): implement SupervisorController – browse, express interest, confirm match"

git add BlindMatchPAS/Controllers/AdminController.cs
git commit -m "feat(controller): implement AdminController – allocation dashboard, user and area management"

# --- Sprint 5: Views ---
git add BlindMatchPAS/Views/Shared/
git commit -m "feat(ui): add _Layout, _LoginPartial and _ValidationScriptsPartial"

git add BlindMatchPAS/Views/Home/
git commit -m "feat(ui): add Home landing page"

git add BlindMatchPAS/Views/Student/
git commit -m "feat(ui): add Student views – dashboard, submit/edit proposal"

git add BlindMatchPAS/Views/Supervisor/
git commit -m "feat(ui): add Supervisor views – dashboard, browse, confirm match, expertise"

git add BlindMatchPAS/Views/Admin/
git commit -m "feat(ui): add Admin views – allocation dashboard, research areas, user management, reassign"

git add BlindMatchPAS/wwwroot/
git commit -m "feat(ui): add site CSS and JS assets"

# --- Sprint 6: Testing ---
git add BlindMatchPAS.Tests/BlindMatchPAS.Tests.csproj
git commit -m "test: add xUnit test project with Moq and FluentAssertions"

git add BlindMatchPAS.Tests/Unit/MatchingServiceTests.cs
git commit -m "test(unit): add MatchingService unit tests – blind match logic, interest and confirm flows"

git add BlindMatchPAS.Tests/Unit/StudentControllerTests.cs
git commit -m "test(unit): add StudentController unit tests with Moq UserManager"

git add BlindMatchPAS.Tests/Integration/ProposalRepositoryTests.cs
git commit -m "test(integration): add proposal repository integration tests – full workflow and reassign"

git add BlindMatchPAS.Tests/Functional/BlindMatchUserJourneyTests.cs
git commit -m "test(functional): add user journey tests – student, supervisor anonymity and admin flows"
