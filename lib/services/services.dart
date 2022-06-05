import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:evoting_flutter/models/models.dart';
import 'package:http/http.dart' as http;

part 'calon_ketua_services.dart';
part 'calon_wakil_services.dart';
part 'kandidat_services.dart';
part 'mahasiswa_services.dart';
part 'vote_services.dart';
part 'pemira_services.dart';
part 'user_services.dart';

part 'ormawa_services.dart';

String baseURL = "http://127.0.0.1:8000/api/";
