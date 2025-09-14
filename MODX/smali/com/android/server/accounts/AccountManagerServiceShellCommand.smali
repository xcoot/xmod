.class public final Lcom/android/server/accounts/AccountManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v1, -0x1

    .line 10
    const-string/jumbo v2, "get-bind-instant-service-allowed"

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_4

    .line 19
    const-string/jumbo v2, "set-bind-instant-service-allowed"

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 28
    return v1

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->parseUserId()Ljava/lang/Integer;

    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_2

    .line 35
    :goto_0
    move v0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_3

    .line 43
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "Error: no true/false specified"

    .line 49
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result p1

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 62
    move-result v1

    .line 63
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 65
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/RegisteredServicesCache;->setBindInstantServiceAllowed(IZ)V

    .line 68
    :goto_1
    return v0

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->parseUserId()Ljava/lang/Integer;

    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_5

    .line 75
    move v0, v1

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 80
    move-result-object v1

    .line 81
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result p1

    .line 87
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 89
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getBindInstantServiceAllowed(I)Z

    .line 92
    move-result p0

    .line 93
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    :goto_2
    return v0
.end method

.method public final onHelp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Account manager service commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "    Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  set-bind-instant-service-allowed [--user <USER_ID> (current user if not specified)] true|false "

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "    Set whether binding to services provided by instant apps is allowed."

    .line 27
    const-string v1, "  get-bind-instant-service-allowed [--user <USER_ID> (current user if not specified)]"

    .line 29
    const-string v2, "    Get whether binding to services provided by instant apps is allowed."

    .line 31
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final parseUserId()Ljava/lang/Integer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 7
    const-string v1, "--user"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    const/4 v1, -0x2

    .line 25
    if-ne v0, v1, :cond_0

    .line 27
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    const/4 v1, -0x1

    .line 37
    if-ne v0, v1, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 42
    move-result-object p0

    .line 43
    const-string v0, "USER_ALL not supported. Specify a user."

    .line 45
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    return-object v2

    .line 49
    :cond_1
    if-gez v0, :cond_2

    .line 51
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 54
    move-result-object p0

    .line 55
    const-string v1, "Invalid user: "

    .line 57
    invoke-static {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 60
    return-object v2

    .line 61
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 69
    move-result-object p0

    .line 70
    const-string v1, "Unknown option: "

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    return-object v2

    .line 80
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 83
    move-result p0

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method
