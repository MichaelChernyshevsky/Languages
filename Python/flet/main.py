import flet as ft
from flet import TextField
from flet_core.control_event import ControlEvent

def main (page:ft.Page)-> None:
    page.title = "Increase counter"
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.theme_mode = 'light'


    def route_change(e: ft.RouteChangeEvent) -> None:
        page.views.clear()

        page.views.append(
            ft.View(
                route='/',
                controls=[
                    ft.AppBar(title=ft.Text('Home'),bgcolor='blue'),
                    ft.Text(value='home',size=30),
                    ft.ElevatedButton(text='Go to store',on_click= lambda _: page.go('/store')),
                     ft.ElevatedButton(text='Print',on_click=print(111))
                ],
                vertical_alignment= ft.MainAxisAlignment.CENTER,
                horizontal_alignment= ft.CrossAxisAlignment.CENTER,
                spacing=26
            )
        )

        if page.route == '/store':
            page.views.append(
                 ft.View(
                route='/store',
                controls=[
                    ft.AppBar(title=ft.Text('Store'),bgcolor='blue'),
                    ft.Text(value='store',size=30),
                    ft.ElevatedButton(text='Go to store',on_click= lambda _: page.go('/'))
                ],
                vertical_alignment= ft.MainAxisAlignment.CENTER,
                horizontal_alignment= ft.CrossAxisAlignment.CENTER,
                spacing=26
            )
        )
            
        page.update()

    
    def view_pop(e: ft.ViewPopEvent) -> None:
        page.views.pop()
        top_view: ft.View = page.views[-1]
        page.go(top_view.route)

    page.on_route_change = route_change
    page.on_view_pop = view_pop
    page.go(page.route)


if __name__ == '__main__':
    ft.app(target=main)
    