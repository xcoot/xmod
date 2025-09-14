.class public final Lcom/android/server/selinux/SelinuxAuditLogBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CONFIG_SELINUX_AUDIT_DOMAIN:Ljava/lang/String; = "selinux_audit_domain"

.field public static final NO_OP_MATCHER:Ljava/util/regex/Matcher;


# instance fields
.field public final mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

.field final mPathMatcher:Ljava/util/regex/Matcher;

.field final mScontextMatcher:Ljava/util/regex/Matcher;

.field final mTcontextMatcher:Ljava/util/regex/Matcher;

.field public mTokens:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "no-op^"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->NO_OP_MATCHER:Ljava/util/regex/Matcher;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    .line 16
    .line 17
    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    .line 20
    .line 21
    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    .line 24
    .line 25
    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v3, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean v2, v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    .line 32
    .line 33
    sget-object v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->NO_OP_MATCHER:Ljava/util/regex/Matcher;

    .line 34
    .line 35
    :try_start_0
    const-string/jumbo v2, "u:r:(?<stype>%s):s0(:c)?(?<scategories>((,c)?\\d+)+)*"

    .line 36
    .line 37
    .line 38
    const-string v3, "adservices"

    .line 39
    .line 40
    const-string/jumbo v4, "selinux_audit_domain"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v5, "no_match^"

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 63
    .line 64
    .line 65
    move-result-object v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    :try_start_1
    const-string/jumbo v3, "u:object_r:(?<ttype>\\w+):s0(:c)?(?<tcategories>((,c)?\\d+)+)*"

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 74
    .line 75
    .line 76
    move-result-object v3
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :try_start_2
    const-string v4, "\"(?<path>/\\w+(/\\w+)?)(/\\w+)*\""

    .line 78
    .line 79
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 84
    .line 85
    .line 86
    move-result-object v1
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    move-object v3, v1

    .line 92
    goto :goto_0

    .line 93
    :catch_2
    move-exception v0

    .line 94
    move-object v2, v1

    .line 95
    move-object v3, v2

    .line 96
    :goto_0
    const-string v4, "SelinuxAuditLogs"

    .line 97
    .line 98
    const-string v5, "Invalid pattern, setting every matcher to no-op."

    .line 99
    .line 100
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :goto_1
    iput-object v2, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    .line 104
    .line 105
    iput-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public final nextTokenMatches(Ljava/util/regex/Matcher;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method
