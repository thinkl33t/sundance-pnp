module motor_mount()
{
linear_extrude(height=3, center=true) projection() import("/home/parag0n/Projects/Sundance/CAD/motor_mount.stl");
}

motor_mount();
