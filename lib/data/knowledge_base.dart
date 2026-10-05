// Official knowledge base for Murshid-UT.
//
// Sources:
// 1. Academic Student Guide (مسيرتي) - Academic Year 1447 AH.
// 2. Admission Guide of University of Tabuk - Academic Year 1447 AH.
//
// The content below is based on the official uploaded documents.
// English answers are translations of the official Arabic information.

class PolicyEntry {
  final String label;
  final String textAr;
  final String textEn;
  final List<String> keywordsAr;
  final List<String> keywordsEn;

  const PolicyEntry({
    required this.label,
    required this.textAr,
    required this.textEn,
    required this.keywordsAr,
    required this.keywordsEn,
  });
}

const List<PolicyEntry> kPolicySet = [
  // ============================================================
  // ATTENDANCE & ABSENCE
  // Academic Student Guide - pages 18-19
  // ============================================================

  PolicyEntry(
    label: 'الحضور والغياب والحرمان - دليل الطالب الأكاديمي ص18-19',
    textAr:
        'يُحرم الطالب من دخول الاختبار النهائي إذا تجاوزت نسبة غيابه بدون عذر '
        '20% من مجموع ساعات الاتصال. وفي حال تجاوزت نسبة إجمالي الغياب '
        '(بعذر وبدون عذر) 35% من مجموع ساعات الاتصال، يُحرم الطالب من دخول '
        'الاختبار النهائي أيضًا. ويجوز لمجلس الكلية أو من يفوضه رفع الحرمان '
        'عند قبول عذر الطالب بشرط ألا تزيد نسبة إجمالي غيابه عن 35%. '
        'والطالب الذي حُرم من دخول الاختبار النهائي يُعد راسبًا في المقرر '
        'ويرصد له تقدير "محروم".',
    textEn:
        'A student is barred from taking the final examination if unexcused '
        'absence exceeds 20% of the total contact hours. The student is also '
        'barred if total absence, including excused and unexcused absence, '
        'exceeds 35% of the total contact hours. The College Council or its '
        'delegate may lift the bar after accepting the student’s excuse, '
        'provided total absence does not exceed 35%. A student who is barred '
        'from the final examination is considered to have failed the course '
        'and receives the grade "Denied".',
    keywordsAr: [
      'غياب',
      'الغياب',
      'حضور',
      'حرمان',
      'محروم',
      'الاختبار النهائي',
      'نسبة الغياب',
      '20%',
      '35%',
      'عذر',
    ],
    keywordsEn: [
      'absence',
      'attendance',
      'absent',
      'denial',
      'denied',
      'barred',
      'final exam',
      'final examination',
      '20%',
      '35%',
      'excuse',
    ],
  ),

  // ============================================================
  // COURSE REGISTRATION
  // Academic Student Guide - pages 15-17
  // ============================================================

  PolicyEntry(
    label: 'تسجيل المقررات والحذف والإضافة - دليل الطالب الأكاديمي ص15-17',
    textAr:
        'الحد الأدنى للعبء الدراسي في الفصل الدراسي هو 12 ساعة دراسية معتمدة. '
        'ومن ضوابط إضافة المقرر أن يكون المقرر مطروحًا والشعبة متاحة، وأن يجتاز '
        'الطالب المتطلب السابق إن وجد، وألا يوجد تعارض مع المقررات المسجلة، '
        'وأن يكون المقرر ضمن ثلاثة مستويات دراسية من مستوى الطالب، وألا يتجاوز '
        'الطالب عبء الخطة الدراسية والمعدل التراكمي. يتم تسجيل المقررات '
        'إلكترونيًا عبر البوابة الأكاديمية فقط.',
    textEn:
        'The minimum academic load in a semester is 12 credit hours. To add '
        'a course, the course must be offered and the section must be available, '
        'any prerequisite must be completed, there must be no conflict with '
        'registered courses, the course must be within three academic levels '
        'of the student’s level, and the student must not exceed the study-plan '
        'load and cumulative GPA requirements. Course registration is completed '
        'electronically through the Academic Portal.',
    keywordsAr: [
      'تسجيل',
      'المقررات',
      'الحذف',
      'الإضافة',
      'عبء دراسي',
      '12 ساعة',
      'متطلب سابق',
      'تعارض',
      'البوابة الأكاديمية',
      'جدول',
    ],
    keywordsEn: [
      'registration',
      'register',
      'course registration',
      'add course',
      'drop course',
      'academic load',
      '12 credit hours',
      'prerequisite',
      'schedule conflict',
      'academic portal',
    ],
  ),

  // ============================================================
  // FINAL EXAM ABSENCE
  // Academic Student Guide - page 27
  // ============================================================

  PolicyEntry(
    label: 'الغياب عن الاختبار النهائي - دليل الطالب الأكاديمي ص27',
    textAr:
        'إذا غاب الطالب عن الاختبار النهائي لمقرر ما، يرصد له صفر في درجة '
        'الاختبار النهائي ويُحسب تقديره في المقرر على مجموع درجات الأعمال '
        'الفصلية التي حصل عليها. وإذا كان الغياب لعذر قهري، يمكن للطالب '
        'التقدم بعذر يتضمن ما يثبت سبب التغيب. تكون فترة استقبال الأعذار '
        'من اليوم التالي للاختبار وحتى الأسبوع الأول من بداية الفصل التالي، '
        'مع استثناء مقررات النظام السنوي وفق المدة المحددة في الدليل. '
        'عند قبول العذر، يمكن تعديل درجة الطالب بعد أدائه الاختبار البديل.',
    textEn:
        'If a student misses a final examination, a zero is recorded for the '
        'final-exam component and the course grade is calculated from the '
        'student’s coursework grades. If the absence was due to a compelling '
        'excuse, the student may submit an excuse with supporting evidence. '
        'For semester-system courses, excuses are received from the day after '
        'the examination until the first week of the following semester. '
        'If the excuse is accepted, the student’s grade can be updated after '
        'taking the alternative examination.',
    keywordsAr: [
      'غياب الاختبار',
      'الاختبار النهائي',
      'اختبار بديل',
      'عذر الاختبار',
      'عذر قهري',
      'صفر',
      'الاختبار البديل',
    ],
    keywordsEn: [
      'miss final exam',
      'final exam absence',
      'alternative exam',
      'makeup exam',
      'exam excuse',
      'zero',
      'final examination',
    ],
  ),

  // ============================================================
  // INTERNAL TRANSFER
  // Academic Student Guide - pages 28-30
  // ============================================================

  PolicyEntry(
    label: 'التحويل الداخلي وتغيير التخصص - دليل الطالب الأكاديمي ص28-30',
    textAr:
        'التحويل الداخلي هو تحويل الطالب من تخصص إلى آخر داخل الكلية أو من '
        'كلية إلى أخرى داخل الجامعة. من الضوابط العامة أن تكون حالة الطالب '
        'الأكاديمية "منتظم"، وألا يقل المعدل التراكمي عن 2.00، وألا يكون قد '
        'سبق له التحويل أو تغيير تخصصه خلال فترة الدراسة، وأن يكون قد حصل '
        'على معدل تراكمي لفصلين دراسيين دون احتساب الفصل الصيفي، وألا يتجاوز '
        'نصف ساعات الخطة الدراسية في التخصص الحالي. بالنسبة للتحويل بين '
        'تخصصات البكالوريوس، يجب ألا يتجاوز الطالب أربعة فصول دراسية. '
        'وللتخصصات الصحية يجب ألا يقل المعدل التراكمي عن 4.00 والنسبة '
        'الموزونة عن 80%، ويكون التحويل لكلية الطب من التخصصات الصحية فقط.',
    textEn:
        'Internal transfer means transferring from one major to another within '
        'a college or from one college to another within the university. General '
        'requirements include having a "regular" academic status, a cumulative '
        'GPA of at least 2.00, not having previously transferred or changed '
        'major, completing two academic semesters excluding the summer semester, '
        'and not exceeding half of the current study plan. For transfer between '
        'bachelor’s majors, the student must not have exceeded four semesters. '
        'For health majors, the cumulative GPA must be at least 4.00 and the '
        'weighted admission percentage at least 80%. Transfer to the College '
        'of Medicine is only from health majors.',
    keywordsAr: [
      'تحويل',
      'التحويل الداخلي',
      'تغيير التخصص',
      'تخصص',
      'تحويل كلية',
      '4.00',
      '80%',
      'كلية الطب',
      'بكالوريوس',
    ],
    keywordsEn: [
      'internal transfer',
      'transfer major',
      'change major',
      'change program',
      'transfer college',
      '4.00',
      '80%',
      'medicine',
      'bachelor',
    ],
  ),

  // ============================================================
  // COURSE EQUIVALENCY
  // Academic Student Guide - page 30
  // ============================================================

  PolicyEntry(
    label: 'معادلة المقررات - دليل الطالب الأكاديمي ص30',
    textAr:
        'تتم معادلة المقررات بناءً على مطابقة مفردات محتوى المقرر بنسبة لا '
        'تقل عن 75% من مخرجات التعلم للمقرر. وتثبت وتحتسب للطالب المقررات '
        'المعادلة التي سبق دراستها في السجل الأكاديمي بما في ذلك التقديرات '
        'والمعدلات الفصلية والتراكمية، بينما تثبت المقررات غير المعادلة ولا '
        'تحتسب. وتحذف المقررات المسجلة في الفصل الصيفي آليًا في حال قبول '
        'الطلب، وتحتسب مدة الدراسة في التخصص السابق ضمن مدة الدراسة النظامية.',
    textEn:
        'Course equivalency is based on matching at least 75% of the course '
        'content learning outcomes. Equivalent courses previously completed '
        'are recorded and counted in the academic record, including grades '
        'and semester and cumulative GPAs. Courses that are not equivalent '
        'are recorded but not counted. Summer courses are automatically '
        'deleted if the transfer request is approved, and time spent in the '
        'previous major counts toward the regular study period.',
    keywordsAr: [
      'معادلة',
      'معادلة المقررات',
      'المقررات المعادلة',
      '75%',
      'مخرجات التعلم',
      'السجل الأكاديمي',
      'تحويل',
    ],
    keywordsEn: [
      'course equivalency',
      'equivalent courses',
      'transfer credits',
      '75%',
      'learning outcomes',
      'academic record',
      'transfer',
    ],
  ),

  // ============================================================
  // DEFERMENT
  // Academic Student Guide - page 36
  // ============================================================

  PolicyEntry(
    label: 'تأجيل الفصل الدراسي - دليل الطالب الأكاديمي ص36',
    textAr:
        'يسمح للطالب في النظام الفصلي لدرجة البكالوريوس بتأجيل فصلين '
        'دراسيين متتاليين أو ثلاثة فصول دراسية متفرقة كحد أقصى خلال فترة '
        'دراسته. وللدبلوم المتوسط والدبلوم المشارك يسمح بتأجيل فصلين دراسيين '
        'كحد أقصى. وفي النظام السنوي يسمح بتأجيل سنتين دراسيتين متفرقتين '
        'كحد أقصى. يجب التقدم بطلب التأجيل عبر البوابة الأكاديمية والالتزام '
        'بالمواعيد المعلنة. ولا تحتسب فصول التأجيل ضمن مدة الدراسة لإنهاء '
        'متطلبات التخرج.',
    textEn:
        'For bachelor’s students in the semester system, a maximum of two '
        'consecutive semesters or three separate semesters may be deferred '
        'during the study period. For the intermediate and associate diplomas, '
        'a maximum of two semesters may be deferred. Under the annual system, '
        'a maximum of two separate academic years may be deferred. The student '
        'must submit the request through the Academic Portal and follow the '
        'announced deadlines. Deferred semesters do not count toward the period '
        'for completing graduation requirements.',
    keywordsAr: [
      'تأجيل',
      'تأجيل الفصل',
      'تأجيل الدراسة',
      'فصل مؤجل',
      'سنتين',
      'ثلاثة فصول',
      'البوابة الأكاديمية',
    ],
    keywordsEn: [
      'defer',
      'deferment',
      'defer semester',
      'defer study',
      'deferred semester',
      'academic deferment',
    ],
  ),

  // ============================================================
  // SEMESTER WITHDRAWAL / APOLOGY
  // Academic Student Guide - pages 38-40
  // ============================================================

  PolicyEntry(
    label: 'الاعتذار عن فصل دراسي - دليل الطالب الأكاديمي ص38-40',
    textAr:
        'الاعتذار عن الفصل هو الاعتذار عن الاستمرار في دراسة فصل دراسي أو '
        'سنة دراسية دون أن يعد الطالب راسبًا، ويرصد له تقدير (ع) في جميع '
        'المقررات. يسمح للطالب في النظام الفصلي لدرجة البكالوريوس بالاعتذار '
        'عن فصلين دراسيين متتاليين أو ثلاثة فصول دراسية متفرقة كحد أقصى، '
        'وللدبلوم المتوسط أو المشارك فصلين كحد أقصى. لا يحتسب الفصل الصيفي '
        'ضمن فصول الاعتذار. تحتسب فصول الاعتذار ضمن مدة الدراسة لإنهاء '
        'متطلبات التخرج، ويجب التقديم عبر البوابة الأكاديمية والالتزام '
        'بالمواعيد المعلنة.',
    textEn:
        'Semester apology/withdrawal means stopping study for a semester or '
        'academic year without being considered failed; the student receives '
        'the grade symbol (ع) in all courses. For bachelor’s students in the '
        'semester system, up to two consecutive semesters or three separate '
        'semesters may be taken as apology. For intermediate or associate '
        'diploma students, up to two semesters are allowed. The summer '
        'semester is not counted among apology semesters. Apology semesters '
        'count toward the study period for graduation requirements. Requests '
        'are submitted through the Academic Portal within the announced dates.',
    keywordsAr: [
      'اعتذار',
      'الاعتذار',
      'اعتذار عن فصل',
      'فصل دراسي',
      'تقدير ع',
      'الاعتذار عن الدراسة',
    ],
    keywordsEn: [
      'semester withdrawal',
      'apology',
      'academic leave',
      'withdraw semester',
      'semester apology',
      'stop study',
    ],
  ),

  // ============================================================
  // COURSE WITHDRAWAL
  // Academic Student Guide - pages 41-43
  // ============================================================

  PolicyEntry(
    label: 'الاعتذار عن مقرر دراسي - دليل الطالب الأكاديمي ص41-43',
    textAr:
        'يسمح للطالب بالانسحاب من مقرر واحد فقط خلال الفصل الدراسي للنظام '
        'الفصلي بشرط ألا يكون المقرر الوحيد المسجل للطالب، مع استثناءات '
        'وضوابط أخرى. ولا يسمح بالانسحاب إذا كان المقرر متزامنًا مع مقرر آخر، '
        'أو من مقررات السنة الدراسية الأولى، أو سبق الانسحاب منه، أو كان '
        'مسجلًا في الفصل الصيفي. ولا يسمح للطالب المتوقع تخرجه بالانسحاب '
        'من أي مقرر مسجل في الفصل الدراسي. الحد الأقصى للانسحاب خلال الدراسة '
        'هو 6 مقررات للبكالوريوس في النظام الفصلي، و8 مقررات للبكالوريوس '
        'في النظام السنوي، و3 مقررات للدبلوم المتوسط، ومقرران للدبلوم المشارك.',
    textEn:
        'A student may withdraw from one course during a semester in the '
        'semester system, provided it is not the student’s only registered '
        'course, subject to other conditions. Withdrawal is not allowed if '
        'the course is concurrent with another course, belongs to the first '
        'academic year, has previously been withdrawn from, or is registered '
        'in the summer semester. A student expected to graduate may not withdraw '
        'from any registered course. The maximum withdrawal during study is '
        '6 courses for bachelor’s students in the semester system, 8 courses '
        'for bachelor’s students in the annual system, 3 courses for the '
        'intermediate diploma, and 2 courses for the associate diploma.',
    keywordsAr: [
      'الانسحاب من مقرر',
      'الاعتذار عن مقرر',
      'انسحاب مقرر',
      'مقرر دراسي',
      '6 مقررات',
      '8 مقررات',
      '3 مقررات',
      'مقررين',
      'متوقع تخرجه',
    ],
    keywordsEn: [
      'course withdrawal',
      'withdraw course',
      'drop course',
      'withdraw from a course',
      '6 courses',
      '8 courses',
      '3 courses',
      '2 courses',
      'expected to graduate',
    ],
  ),

  // ============================================================
  // FINAL UNIVERSITY WITHDRAWAL
  // Academic Student Guide - pages 44-45
  // ============================================================

  PolicyEntry(
    label: 'الانسحاب النهائي من الجامعة - دليل الطالب الأكاديمي ص44-45',
    textAr:
        'الانسحاب النهائي هو الانسحاب من الجامعة نهائيًا، ولا يمكن العودة '
        'للدراسة إلا بطلب إعادة القيد بعد انتهاء الفصل ووفق ضوابط إعادة القيد. '
        'يشترط أن تكون حالة الطالب الأكاديمية منتظمًا أو معتذرًا أو مؤجلًا، '
        'وألا تكون عليه التزامات لدى جهات الجامعة، والالتزام بالمواعيد وفق '
        'التقويم الجامعي. يمكن التقدم بطلب الانسحاب إلكترونيًا عبر البوابة '
        'الأكاديمية، والتقدم بالطلب لا يعني قبوله.',
    textEn:
        'Final university withdrawal means permanently withdrawing from the '
        'university. The student cannot return to study except by applying '
        'for reinstatement after the semester according to reinstatement rules. '
        'The student must have regular, apology, or deferred academic status, '
        'have no outstanding obligations to university departments, and follow '
        'the academic calendar deadlines. The request is submitted electronically '
        'through the Academic Portal, and submitting the request does not mean '
        'that it has been approved.',
    keywordsAr: [
      'انسحاب نهائي',
      'الانسحاب من الجامعة',
      'الانسحاب النهائي',
      'إعادة القيد',
      'الرجوع للدراسة',
      'البوابة الأكاديمية',
    ],
    keywordsEn: [
      'final withdrawal',
      'withdraw university',
      'withdraw from university',
      'permanent withdrawal',
      'reinstatement',
      'return to study',
      'academic portal',
    ],
  ),

  // ============================================================
  // REINSTATEMENT
  // Academic Student Guide - pages 46-48
  // ============================================================

  PolicyEntry(
    label: 'إعادة القيد - دليل الطالب الأكاديمي ص46-48',
    textAr:
        'إعادة القيد هي عودة الطالب المطوي قيده أو المنقطع أو المنسحب إلى '
        'الانتظام في الدراسة برقمه وسجله الأكاديمي السابق. لإعادة القيد للمرة '
        'الأولى، يجب التقدم قبل بداية ثلاثة فصول دراسية تلي فصل طي القيد '
        'للنظام الفصلي، أو قبل بداية سنة دراسية تلي سنة طي القيد للنظام السنوي، '
        'مع توفر مدة كافية لإنهاء متطلبات التخرج ضمن المدة النظامية. '
        'ولإعادة القيد للمرة الثانية يجب كذلك اجتياز نصف ساعات الخطة الدراسية '
        'كحد أدنى وألا يقل المعدل عن 2.00 من 5.00.',
    textEn:
        'Reinstatement is the return of a student whose record was closed, who '
        'was discontinued, or who withdrew, to study using the previous student '
        'number and academic record. For first reinstatement, the student must '
        'apply before the beginning of the third semester following the semester '
        'in which the record was closed under the semester system, or before '
        'the beginning of the academic year following closure under the annual '
        'system, with enough remaining time to complete graduation requirements '
        'within the regular period. For a second reinstatement, the student '
        'must also have completed at least half of the study-plan credit hours '
        'and have a GPA of at least 2.00 out of 5.00.',
    keywordsAr: [
      'إعادة القيد',
      'مطوي قيده',
      'منقطع',
      'منسحب',
      'إعادة الانتظام',
      '2.00',
      'نصف ساعات الخطة',
    ],
    keywordsEn: [
      'reinstatement',
      're-enrollment',
      'closed record',
      'discontinued student',
      'withdrawn student',
      '2.00',
      'half study plan',
    ],
  ),

  // ============================================================
  // GRADUATION
  // Academic Student Guide - pages 88-89
  // ============================================================

  PolicyEntry(
    label: 'متطلبات التخرج - دليل الطالب الأكاديمي ص88-89',
    textAr:
        'يتخرج الطالب بعد إنهاء متطلبات التخرج بنجاح حسب متطلبات البرنامج '
        'والخطة الدراسية، على ألا يقل المعدل التراكمي عن 2.00 وتقدير '
        '"مقبول". وإذا كان الطالب مسجلًا لمقرر في فصل دراسي أو سنة دراسية '
        'فلا يتخرج إلا بعد انتهاء الفصل الدراسي أو السنة الدراسية. ويجب '
        'اجتياز جميع المقررات الدراسية بنجاح للتمكن من بدء سنة الامتياز، '
        'كما يجب اجتياز الاختبارات المعيارية أو المهنية أو اختبارات نهاية '
        'البرنامج أو اختبارات تهيئة الخريجين المعتمدة من مجلس الكلية إن وجدت.',
    textEn:
        'A student graduates after successfully completing the graduation '
        'requirements according to the program and study plan, with a cumulative '
        'GPA of at least 2.00 and a "Pass" standing. If the student is registered '
        'in a course during a semester or academic year, graduation does not '
        'take place until that semester or academic year ends. All courses must '
        'be successfully completed before beginning the internship year. The '
        'student must also pass any standardized, professional, end-of-program, '
        'or graduate-preparation examinations approved by the College Council, '
        'if applicable.',
    keywordsAr: [
      'تخرج',
      'التخرج',
      'متطلبات التخرج',
      'المعدل المطلوب للتخرج',
      '2.00',
      'مقبول',
      'سنة الامتياز',
      'الخطة الدراسية',
    ],
    keywordsEn: [
      'graduation',
      'graduate',
      'graduation requirements',
      'minimum GPA to graduate',
      '2.00',
      'pass',
      'internship year',
      'study plan',
    ],
  ),

  // ============================================================
  // GRADES & GPA
  // Academic Student Guide - pages 82-86
  // ============================================================

  PolicyEntry(
    label: 'المعدلات والتقديرات - دليل الطالب الأكاديمي ص82-86',
    textAr:
        'وفق نظام الدرجات من 5.00: تقدير أ+ وزنه 5.00، أ وزنه 4.75، '
        'ب+ وزنه 4.50، ب وزنه 4.00، ج+ وزنه 3.50، ج وزنه 3.00، '
        'د+ وزنه 2.50، د وزنه 2.00، هـ وزنه 1.00. ويكون التقدير العام '
        'ممتازًا من 4.50 إلى 5.00، وجيدًا جدًا من 3.75 إلى 4.49، وجيدًا '
        'من 2.75 إلى 3.74، ومقبولًا من 2.00 إلى 2.74. ويُحسب المعدل '
        'الفصلي بقسمة مجموع النقاط على مجموع الوحدات، والمعدل التراكمي '
        'بقسمة مجموع نقاط جميع الفصول على مجموع وحداتها.',
    textEn:
        'Under the 5.00 grading scale: A+ has a weight of 5.00, A is 4.75, '
        'B+ is 4.50, B is 4.00, C+ is 3.50, C is 3.00, D+ is 2.50, '
        'D is 2.00, and F is 1.00. The overall classification is Excellent '
        'from 4.50 to 5.00, Very Good from 3.75 to 4.49, Good from 2.75 '
        'to 3.74, and Pass from 2.00 to 2.74. Semester GPA is calculated by '
        'dividing total points by total credit units, while cumulative GPA '
        'is calculated using the total points and units across all semesters.',
    keywordsAr: [
      'معدل',
      'المعدل',
      'المعدل الفصلي',
      'المعدل التراكمي',
      'التقديرات',
      'تقدير',
      'ممتاز',
      'جيد جدًا',
      'جيد',
      'مقبول',
      '5.00',
      '4.50',
      '3.75',
      '2.00',
    ],
    keywordsEn: [
      'GPA',
      'grade',
      'grades',
      'semester GPA',
      'cumulative GPA',
      'excellent',
      'very good',
      'good',
      'pass',
      '5.00',
      '4.50',
      '3.75',
      '2.00',
    ],
  ),

  // ============================================================
  // HONORS
  // Academic Student Guide - page 87
  // ============================================================

  PolicyEntry(
    label: 'مراتب الشرف - دليل الطالب الأكاديمي ص87',
    textAr:
        'مرتبة الشرف الأولى تمنح للطالب الحاصل على معدل تراكمي من 4.75 إلى '
        '5.00 من 5.00 عند التخرج. ومرتبة الشرف الثانية تمنح للطالب الحاصل '
        'على معدل تراكمي من 4.25 إلى أقل من 4.75 من 5.00 عند التخرج. '
        'ومن ضوابط الحصول على مرتبة الشرف ألا يكون الطالب قد رسب أو حُرم '
        'في أي مقرر درسه في الجامعة أو جامعة أخرى، وأن يكون قد درس في '
        'الجامعة ما لا يقل عن 60% من متطلبات التخرج.',
    textEn:
        'First-class honors are awarded to a student with a cumulative GPA '
        'from 4.75 to 5.00 out of 5.00 at graduation. Second-class honors '
        'are awarded to a student with a cumulative GPA from 4.25 to below '
        '4.75 out of 5.00. Requirements include not having failed or been '
        'barred in any course taken at the university or another university, '
        'and completing at least 60% of the graduation requirements at the '
        'university.',
    keywordsAr: [
      'مرتبة الشرف',
      'الشرف الأولى',
      'الشرف الثانية',
      '4.75',
      '4.25',
      '60%',
      'تكريم',
    ],
    keywordsEn: [
      'honors',
      'honor',
      'first class honors',
      'second class honors',
      '4.75',
      '4.25',
      '60%',
    ],
  ),

  // ============================================================
  // ADMISSION REQUIREMENTS
  // Admission Guide - page 2
  // ============================================================

  PolicyEntry(
    label: 'شروط القبول العامة 1447هـ - دليل القبول ص2',
    textAr:
        'من شروط القبول العامة للعام الجامعي 1447هـ أن يكون المتقدم سعودي '
        'الجنسية أو من أم سعودية، وأن يكون حاصلًا على شهادة الثانوية العامة '
        'أو ما يعادلها. يجب ألا يكون قد مضى على شهادة الثانوية أكثر من خمس '
        'سنوات، وللتخصصات الصحية ألا يكون قد مضى عليها أكثر من سنتين. '
        'ألا يزيد عمر المتقدم عن 30 عامًا، أي أن يكون من مواليد عام 1995م '
        'وما بعده. كما يجب ألا تقل درجة اختبار القدرات العامة عن 50%، '
        'وألا تقل درجة اختبار التحصيل الدراسي عن 50%، مع استيفاء بقية '
        'الشروط العامة المعلنة في دليل القبول.',
    textEn:
        'General admission requirements for the 1447 AH academic year include '
        'being a Saudi citizen or having a Saudi mother and holding a general '
        'secondary-school certificate or equivalent. The secondary certificate '
        'must not be more than five years old, and for health programs it must '
        'not be more than two years old. The applicant must not be older than '
        '30 years, meaning born in 1995 or later. The General Aptitude Test '
        'score must be at least 50%, and the Scholastic Achievement Test score '
        'must be at least 50%, in addition to the other published admission '
        'requirements.',
    keywordsAr: [
      'قبول',
      'شروط القبول',
      'القبول',
      'الثانوية',
      'القدرات',
      'التحصيلي',
      '50%',
      '30 سنة',
      '1447',
    ],
    keywordsEn: [
      'admission',
      'admission requirements',
      'secondary certificate',
      'aptitude test',
      'achievement test',
      '50%',
      '30 years',
      '1447',
    ],
  ),

  // ============================================================
  // WEIGHTED ADMISSION PERCENTAGE
  // Admission Guide - pages 2-3
  // ============================================================

  PolicyEntry(
    label: 'النسبة الموزونة - دليل القبول 1447هـ ص2-3',
    textAr:
        'لجميع التخصصات تُحسب النسبة الموزونة وفق مكونات القبول الموضحة '
        'في دليل القبول: الثانوية العامة بنسبة 40%، واختبار القدرات العامة '
        'بنسبة 30%، واختبار التحصيل الدراسي بنسبة 30%. والحد الأدنى للنسبة '
        'الموزونة هو 85% للتخصصات الصحية لدرجة البكالوريوس، و80% للتخصصات '
        'الهندسية والتصميم الداخلي لدرجة البكالوريوس، و75% للتخصصات التقنية '
        'لدرجة البكالوريوس، و70% لدرجة البكالوريوس، و65% لدرجة الدبلوم.',
    textEn:
        'For all majors, the weighted admission percentage is based on the '
        'components stated in the admission guide: 40% General Secondary '
        'Certificate, 30% General Aptitude Test, and 30% Scholastic Achievement '
        'Test. The minimum weighted percentage is 85% for health bachelor’s '
        'programs, 80% for engineering and interior-design bachelor’s programs, '
        '75% for technical bachelor’s programs, 70% for bachelor’s programs '
        'generally, and 65% for diploma programs.',
    keywordsAr: [
      'النسبة الموزونة',
      'نسبة القبول',
      '85%',
      '80%',
      '75%',
      '70%',
      '65%',
      'الثانوية 40',
      'القدرات 30',
      'التحصيلي 30',
    ],
    keywordsEn: [
      'weighted percentage',
      'weighted admission',
      'admission percentage',
      '85%',
      '80%',
      '75%',
      '70%',
      '65%',
      'secondary 40',
      'aptitude 30',
      'achievement 30',
    ],
  ),

  // ============================================================
  // ACADEMIC DEGREES
  // Admission Guide - page 4
  // ============================================================

  PolicyEntry(
    label: 'الدرجات العلمية - دليل القبول 1447هـ ص4',
    textAr:
        'درجة البكالوريوس هي درجة جامعية تمنح بعد دراسة تخصص لمدة لا تقل '
        'عن أربع سنوات أو بعد دراسة عدد المقررات والساعات حسب الخطة الدراسية '
        'وإنهاء متطلبات التخرج. ودرجة الدبلوم المتوسط تمنح بعد دراسة تخصص '
        'لمدة لا تقل عن سنتين ونصف وإنهاء متطلبات التخرج. ودرجة الدبلوم '
        'المشارك تمنح بعد دراسة تخصص لمدة لا تقل عن سنة ونصف وإنهاء '
        'متطلبات التخرج.',
    textEn:
        'A bachelor’s degree is a university degree awarded after studying '
        'a major for at least four years or completing the required courses '
        'and credit hours according to the study plan and graduation requirements. '
        'An intermediate diploma is awarded after studying a major for at least '
        'two and a half years and completing graduation requirements. An '
        'associate diploma is awarded after studying a major for at least '
        'one and a half years and completing graduation requirements.',
    keywordsAr: [
      'بكالوريوس',
      'درجة البكالوريوس',
      'دبلوم متوسط',
      'الدبلوم المتوسط',
      'دبلوم مشارك',
      'الدبلوم المشارك',
      'الدرجات العلمية',
    ],
    keywordsEn: [
      'bachelor',
      'bachelor degree',
      'intermediate diploma',
      'associate diploma',
      'academic degrees',
      'degree duration',
    ],
  ),

  // ============================================================
  // HEALTH TRACK
  // Admission Guide - pages 5-6
  // ============================================================

  PolicyEntry(
    label: 'المسار الصحي - دليل القبول 1447هـ ص5-6',
    textAr:
        'المسار الصحي في المقر الرئيسي بمدينة تبوك مدته سنة دراسية واحدة '
        'ويُخصص الطالب بعد السنة الأولى وفق ضوابط التخصيص. السنة الدراسية '
        'في المسار الصحي إلزامية، ولا يسمح للطالب بتأجيل الفصل أو الاعتذار '
        'عنه أو عن أي مقرر، ولا يسمح له بالدراسة كزائر داخلي أو خارجي. '
        'للتخصيص بعد المسار الصحي يجب أن تكون حالة الطالب الأكاديمية منتظمًا، '
        'وأن يجتاز جميع مقررات المسار الصحي بنجاح خلال فصلين دراسيين أو بحد '
        'أقصى ثلاثة فصول، وألا يقل المعدل التراكمي عن 3.00 من 5.00. '
        'وتتم المفاضلة وفق المعدل التراكمي بنسبة 50% والنسبة الموزونة للقبول '
        'بنسبة 50%، إضافة إلى ترتيب الرغبات والسعة الاستيعابية.',
    textEn:
        'The health track at the main campus in Tabuk lasts one academic year, '
        'after which students are assigned to majors according to the assignment '
        'rules. The health-track year is mandatory; students may not defer or '
        'take an apology for the semester or any course, and may not study as '
        'internal or external visiting students. For assignment after the '
        'health track, the student must have regular academic status, successfully '
        'complete all health-track courses within two semesters or a maximum of '
        'three semesters, and have a cumulative GPA of at least 3.00 out of 5.00. '
        'The assignment competition uses 50% cumulative GPA and 50% weighted '
        'admission percentage, together with preference order and available capacity.',
    keywordsAr: [
      'المسار الصحي',
      'صحي',
      'التخصصات الصحية',
      'تخصيص صحي',
      '3.00',
      '50%',
      'الطب',
      'الصيدلة',
      'التمريض',
      'العلاج الطبيعي',
      'المختبرات الطبية',
    ],
    keywordsEn: [
      'health track',
      'health program',
      'health majors',
      'health assignment',
      '3.00',
      '50%',
      'medicine',
      'pharmacy',
      'nursing',
      'physical therapy',
      'medical laboratory',
    ],
  ),

  // ============================================================
  // ENGINEERING TRACK
  // Admission Guide - pages 7-8
  // ============================================================

  PolicyEntry(
    label: 'المسار الهندسي - دليل القبول 1447هـ ص7-8',
    textAr:
        'المسار الهندسي في المقر الرئيسي بمدينة تبوك مدته سنة دراسية واحدة '
        'ويُخصص الطالب بعد السنة الأولى وفق ضوابط التخصيص. ومن التخصصات '
        'الواردة في الدليل: الهندسة المدنية، الهندسة الكهربائية، الهندسة '
        'الميكانيكية، الهندسة الصناعية، وهندسة الحاسب. للتخصيص بعد المسار '
        'الهندسي يجب أن تكون حالة الطالب الأكاديمية منتظمًا، وأن يجتاز جميع '
        'مقررات المسار الهندسي بنجاح خلال فصلين دراسيين أو بحد أقصى ثلاثة '
        'فصول، وألا يقل المعدل التراكمي عن 3.00 من 5.00. وتتم المفاضلة '
        'وفق المعدل التراكمي بنسبة 50% والنسبة الموزونة للقبول بنسبة 50%.',
    textEn:
        'The engineering track at the main campus in Tabuk lasts one academic '
        'year, after which students are assigned to majors according to the '
        'assignment rules. Majors listed in the guide include Civil Engineering, '
        'Electrical Engineering, Mechanical Engineering, Industrial Engineering, '
        'and Computer Engineering. For assignment after the engineering track, '
        'the student must have regular academic status, successfully complete '
        'all engineering-track courses within two semesters or a maximum of '
        'three semesters, and have a cumulative GPA of at least 3.00 out of 5.00. '
        'The assignment competition uses 50% cumulative GPA and 50% weighted '
        'admission percentage.',
    keywordsAr: [
      'المسار الهندسي',
      'هندسة',
      'الهندسة المدنية',
      'الهندسة الكهربائية',
      'الهندسة الميكانيكية',
      'الهندسة الصناعية',
      'هندسة الحاسب',
      '3.00',
    ],
    keywordsEn: [
      'engineering track',
      'engineering',
      'civil engineering',
      'electrical engineering',
      'mechanical engineering',
      'industrial engineering',
      'computer engineering',
      '3.00',
    ],
  ),
];

const List<String> kSuggestedPrompts = [
  // Arabic
  'ما نسبة الغياب التي تؤدي إلى الحرمان من الاختبار النهائي؟',
  'ما شروط إضافة مقرر دراسي؟',
  'ما شروط التحويل الداخلي؟',
  'كم المعدل المطلوب للتخرج؟',
  'كيف أحسب معدلي التراكمي؟',
  'ما شروط مرتبة الشرف؟',
  'ما شروط القبول في جامعة تبوك؟',
  'كيف تحسب النسبة الموزونة؟',

  // English
  'What absence percentage causes a final exam denial?',
  'What are the requirements to add a course?',
  'What are the requirements for internal transfer?',
  'What GPA do I need to graduate?',
  'How is the cumulative GPA calculated?',
  'What are the requirements for honors?',
  'What are the admission requirements?',
  'How is the weighted admission percentage calculated?',
];

class KnowledgeBase {
  static bool _containsArabic(String text) {
    return RegExp(r'[\u0600-\u06FF]').hasMatch(text);
  }

  static String _normalizeArabic(String text) {
    return text
        .toLowerCase()
        .replaceAll('أ', 'ا')
        .replaceAll('إ', 'ا')
        .replaceAll('آ', 'ا')
        .replaceAll('ى', 'ي')
        .replaceAll('ة', 'ه')
        .replaceAll('ـ', '')
        .replaceAll(RegExp(r'[\u064B-\u065F]'), '')
        .trim();
  }

  static String _normalizeEnglish(String text) {
    return text.toLowerCase().trim();
  }

  static String answer(String question) {
    final isArabic = _containsArabic(question);

    final normalizedQuestion = isArabic
        ? _normalizeArabic(question)
        : _normalizeEnglish(question);

    final entries = kPolicySet.where((entry) {
      return isArabic
          ? entry.keywordsAr.any(
              (keyword) =>
                  normalizedQuestion.contains(_normalizeArabic(keyword)),
            )
          : entry.keywordsEn.any(
              (keyword) =>
                  normalizedQuestion.contains(_normalizeEnglish(keyword)),
            );
    }).toList();

    if (entries.isEmpty) {
      if (isArabic) {
        return 'لم أجد في دليل الطالب الأكاديمي أو دليل القبول '
            'المعلومات الكافية للإجابة عن هذا السؤال. '
            'يرجى صياغة السؤال بطريقة مرتبطة باللوائح الأكاديمية أو القبول '
            'في جامعة تبوك.';
      }

      return 'I could not find enough information in the official Academic '
          'Student Guide or Admission Guide to answer this question. '
          'Please ask about a University of Tabuk academic or admission policy.';
    }

    // Remove duplicate matches while preserving order.
    final uniqueEntries = <PolicyEntry>[];

    for (final entry in entries) {
      if (!uniqueEntries.contains(entry)) {
        uniqueEntries.add(entry);
      }
    }

    final selected = uniqueEntries.take(2).toList();

    final buffer = StringBuffer();

    for (final entry in selected) {
      if (isArabic) {
        buffer.writeln(entry.textAr);
      } else {
        buffer.writeln(entry.textEn);
      }

      buffer.writeln();
      buffer.writeln('المصدر: ${entry.label}');
      buffer.writeln();
    }

    return buffer.toString().trim();
  }
}