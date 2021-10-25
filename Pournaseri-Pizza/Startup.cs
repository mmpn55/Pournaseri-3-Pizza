using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Pournaseri_Pizza.Startup))]
namespace Pournaseri_Pizza
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
         }
    }
}
