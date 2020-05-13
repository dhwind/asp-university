using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjectIT2327.Startup))]
namespace ProjectIT2327
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
