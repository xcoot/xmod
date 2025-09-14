.class public final Lcom/android/server/textservices/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mUserData:Landroid/util/SparseArray;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/textservices/TextServicesManagerService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v0, Landroid/os/UserManager;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/os/UserManager;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/textservices/TextServicesManagerService;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-string/jumbo v2, "selected_spell_checker"

    .line 11
    .line 12
    .line 13
    iget v3, p1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object v4, p1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 22
    .line 23
    invoke-static {v4, v2, p0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string p0, ""

    .line 30
    .line 31
    iget-object v4, p1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 32
    .line 33
    invoke-static {v4, v2, p0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p0, p1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 37
    .line 38
    const-string/jumbo p1, "selected_spell_checker_subtype"

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {p0, p1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method


# virtual methods
.method public final canCallerAccessSpellChecker(Landroid/view/textservice/SpellCheckerInfo;II)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/textservices/TextServicesManagerService;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    xor-int/2addr p0, v0

    .line 40
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p1, "  User "

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "TextServicesManagerService"

    .line 6
    .line 7
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    array-length v0, p3

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    array-length v0, p3

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    aget-object v0, p3, v1

    .line 23
    .line 24
    const-string v3, "-a"

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    array-length v0, p3

    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v0, v3, :cond_5

    .line 36
    .line 37
    aget-object v0, p3, v1

    .line 38
    .line 39
    const-string v1, "--user"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    aget-object p3, p3, v2

    .line 49
    .line 50
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 55
    .line 56
    invoke-virtual {v0, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    const-string p0, "Non-existent user."

    .line 63
    .line 64
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 75
    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    const-string p0, "User needs to unlock first."

    .line 79
    .line 80
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    const-string v1, "Current Text Services Manager state:"

    .line 88
    .line 89
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, ":"

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$mdump(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 113
    .line 114
    .line 115
    monitor-exit p0

    .line 116
    goto :goto_3

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p1

    .line 120
    :cond_5
    :goto_0
    const-string p0, "Invalid arguments to text services."

    .line 121
    .line 122
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter p1

    .line 129
    :try_start_1
    const-string p3, "Current Text Services Manager state:"

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string p3, "  Users:"

    .line 135
    .line 136
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    :goto_2
    if-ge v1, p3, :cond_7

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 154
    .line 155
    invoke-static {v0, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$mdump(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catchall_1
    move-exception p0

    .line 162
    goto :goto_4

    .line 163
    :cond_7
    monitor-exit p1

    .line 164
    :goto_3
    return-void

    .line 165
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    throw p0
.end method

.method public final findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 32
    .line 33
    and-int/2addr v2, v3

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/4 v1, 0x0

    .line 45
    const-string v3, "TextServicesManagerService"

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    const-string/jumbo p0, "no available spell checker services found"

    .line 50
    .line 51
    .line 52
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_2
    const/4 v4, 0x0

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    move v5, v4

    .line 60
    :goto_1
    if-ge v5, p2, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Landroid/view/textservice/SpellCheckerInfo;

    .line 67
    .line 68
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    return-object v6

    .line 79
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 93
    .line 94
    if-eqz p0, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    xor-int/2addr v5, v2

    .line 105
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    xor-int/2addr v7, v2

    .line 114
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    xor-int/2addr v8, v2

    .line 123
    if-eqz v5, :cond_5

    .line 124
    .line 125
    if-eqz v7, :cond_5

    .line 126
    .line 127
    if-eqz v8, :cond_5

    .line 128
    .line 129
    new-instance v8, Ljava/util/Locale;

    .line 130
    .line 131
    invoke-direct {v8, p1, v6, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    move-object v8, v1

    .line 136
    :goto_2
    if-eqz v5, :cond_6

    .line 137
    .line 138
    if-eqz v7, :cond_6

    .line 139
    .line 140
    new-instance p0, Ljava/util/Locale;

    .line 141
    .line 142
    invoke-direct {p0, p1, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move-object p0, v1

    .line 147
    :goto_3
    if-eqz v5, :cond_7

    .line 148
    .line 149
    new-instance v1, Ljava/util/Locale;

    .line 150
    .line 151
    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    move-object p1, p0

    .line 155
    move-object p0, v1

    .line 156
    move-object v1, v8

    .line 157
    goto :goto_4

    .line 158
    :cond_8
    move-object p0, v1

    .line 159
    move-object p1, p0

    .line 160
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    if-eqz v1, :cond_9

    .line 166
    .line 167
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_d

    .line 177
    .line 178
    if-eqz p1, :cond_c

    .line 179
    .line 180
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-nez v6, :cond_a

    .line 190
    .line 191
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_a
    sget-object p0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 195
    .line 196
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_b

    .line 201
    .line 202
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :cond_b
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 213
    .line 214
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    sget-object p0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 218
    .line 219
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_d
    if-eqz p1, :cond_e

    .line 224
    .line 225
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_e
    if-eqz p0, :cond_f

    .line 229
    .line 230
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    :cond_f
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 234
    .line 235
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    sget-object p0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 239
    .line 240
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    move p1, v4

    .line 251
    :goto_6
    if-ge p1, p0, :cond_13

    .line 252
    .line 253
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Ljava/util/Locale;

    .line 258
    .line 259
    move v6, v4

    .line 260
    :goto_7
    if-ge v6, p2, :cond_12

    .line 261
    .line 262
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    check-cast v7, Landroid/view/textservice/SpellCheckerInfo;

    .line 267
    .line 268
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    move v9, v4

    .line 273
    :goto_8
    if-ge v9, v8, :cond_11

    .line 274
    .line 275
    invoke-virtual {v7, v9}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-static {v10}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-virtual {v1, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    if-eqz v10, :cond_10

    .line 292
    .line 293
    return-object v7

    .line 294
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_11
    add-int/lit8 v6, v6, 0x1

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_12
    add-int/lit8 p1, p1, 0x1

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_13
    if-le p2, v2, :cond_14

    .line 304
    .line 305
    const-string/jumbo p0, "more than one spell checker service found, picking first"

    .line 306
    .line 307
    .line 308
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    :cond_14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    check-cast p0, Landroid/view/textservice/SpellCheckerInfo;

    .line 316
    .line 317
    return-object p0
.end method

.method public final finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_1
    if-ge v1, p0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 63
    .line 64
    invoke-virtual {v2, p2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method

.method public final getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p2

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    monitor-exit p2

    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit p2

    .line 23
    return-object p0

    .line 24
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    const-string/jumbo v2, "selected_spell_checker_subtype"

    .line 20
    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 23
    .line 24
    iget v4, p1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static {v3, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 46
    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz p1, :cond_9

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    if-nez v2, :cond_2

    .line 58
    .line 59
    if-nez p2, :cond_2

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz v2, :cond_5

    .line 67
    .line 68
    :goto_0
    if-ge v5, p2, :cond_4

    .line 69
    .line 70
    invoke-virtual {p1, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-ne v0, v2, :cond_3

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    return-object v1

    .line 85
    :cond_5
    if-nez p0, :cond_6

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-ge v5, p2, :cond_9

    .line 93
    .line 94
    invoke-virtual {p1, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    return-object p2

    .line 109
    :cond_7
    if-nez v1, :cond_8

    .line 110
    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    move-object v1, p2

    .line 128
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_9
    :goto_2
    return-object v1

    .line 132
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
.end method

.method public final getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v2

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    :goto_0
    if-ltz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/server/textservices/TextServicesManagerService;->canCallerAccessSpellChecker(Landroid/view/textservice/SpellCheckerInfo;II)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    new-array p0, p0, [Landroid/view/textservice/SpellCheckerInfo;

    .line 69
    .line 70
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    move-object v2, p0

    .line 75
    check-cast v2, [Landroid/view/textservice/SpellCheckerInfo;

    .line 76
    .line 77
    :goto_2
    return-object v2

    .line 78
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public final getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_5

    .line 11
    .line 12
    if-eqz p4, :cond_5

    .line 13
    .line 14
    if-nez p5, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    monitor-exit v2

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v4, v3, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    move v6, p1

    .line 51
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/textservices/TextServicesManagerService;->canCallerAccessSpellChecker(Landroid/view/textservice/SpellCheckerInfo;II)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_3

    .line 56
    .line 57
    monitor-exit v2

    .line 58
    return-void

    .line 59
    :cond_3
    iget-object v6, v3, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-virtual {p0, v4, v3}, Lcom/android/server/textservices/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 74
    .line 75
    .line 76
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    monitor-exit v2

    .line 83
    return-void

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    move-object v1, v0

    .line 86
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_4
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 91
    .line 92
    move-object v3, v0

    .line 93
    move v4, v5

    .line 94
    move-object v5, p3

    .line 95
    move-object v6, p4

    .line 96
    move-object v7, p5

    .line 97
    move-object/from16 v8, p6

    .line 98
    .line 99
    move/from16 v9, p7

    .line 100
    .line 101
    invoke-direct/range {v3 .. v9}, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 105
    .line 106
    .line 107
    monitor-exit v2

    .line 108
    return-void

    .line 109
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw v0

    .line 111
    :cond_5
    :goto_1
    const-string v0, "TextServicesManagerService"

    .line 112
    .line 113
    const-string v1, "getSpellCheckerService: Invalid input."

    .line 114
    .line 115
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final isSpellCheckerEnabled(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mResolver:Landroid/content/ContentResolver;

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    .line 21
    .line 22
    const-string/jumbo v2, "spell_checker_enabled"

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ne p0, v3, :cond_1

    .line 31
    .line 32
    move p1, v3

    .line 33
    :cond_1
    monitor-exit v0

    .line 34
    return p1

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 6
    .line 7
    iget-object v2, p2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v3, "android.service.textservice.SpellCheckerService"

    .line 15
    .line 16
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget v3, p2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mUserId:I

    .line 29
    .line 30
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const v4, 0x800001

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2, v1, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    const-string p0, "TextServicesManagerService"

    .line 44
    .line 45
    const-string p1, "Failed to get a spell checker service."

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_0
    new-instance p1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 53
    .line 54
    invoke-direct {p1, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public final verifyUser(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "Cross-user interaction requires INTERACT_ACROSS_USERS_FULL. userId="

    .line 10
    .line 11
    const-string v2, " callingUserId="

    .line 12
    .line 13
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
