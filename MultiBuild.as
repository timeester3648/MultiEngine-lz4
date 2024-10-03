void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	project.name("lz4");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	project.license("./LICENSE");
	properties.tags({ "use_header_only_mle", "utf8" });

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./lib"
	});

	properties.files({
		"./lib/**.h",
		"./lib/**.c",
		"./config/config.cpp"
	});

	properties.defines("LZ4_USER_MEMORY_FUNCTIONS");
}