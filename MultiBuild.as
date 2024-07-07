void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("lz4");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	properties.license("./LICENSE");

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./lib"
	});

	properties.files({
		"./lib/**.h",
		"./lib/**.c"
	});
}