.class public final Lcom/android/server/alarm/AlarmManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7

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
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v2

    .line 17
    const v3, -0x7e64175c

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eq v2, v3, :cond_3

    .line 25
    const v3, 0x519f2558

    .line 28
    if-eq v2, v3, :cond_2

    .line 30
    const v3, 0x7895dd04

    .line 33
    if-eq v2, v3, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string/jumbo v2, "set-timezone"

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 45
    move v2, v5

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const-string/jumbo v2, "set-time"

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 58
    move v2, v6

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const-string/jumbo v2, "get-config-version"

    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 69
    move v2, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    :goto_0
    move v2, v1

    .line 72
    :goto_1
    if-eqz v2, :cond_7

    .line 74
    if-eq v2, v5, :cond_6

    .line 76
    if-eq v2, v4, :cond_5

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :cond_5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 85
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Lcom/android/server/alarm/AlarmManagerService$4;

    .line 87
    invoke-static {p0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p0}, Landroid/app/IAlarmManager;->getConfigVersion()I

    .line 94
    move-result p0

    .line 95
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 98
    return v6

    .line 99
    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 105
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Lcom/android/server/alarm/AlarmManagerService$4;

    .line 107
    invoke-static {p0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    .line 110
    move-result-object p0

    .line 111
    invoke-interface {p0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 114
    return v6

    .line 115
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 122
    move-result-wide v2

    .line 123
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 125
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Lcom/android/server/alarm/AlarmManagerService$4;

    .line 127
    invoke-static {p0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    .line 130
    move-result-object p0

    .line 131
    invoke-interface {p0, v2, v3}, Landroid/app/IAlarmManager;->setTime(J)Z

    .line 134
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    if-eqz p0, :cond_8

    .line 137
    move v1, v6

    .line 138
    :cond_8
    return v1

    .line 139
    :goto_2
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 142
    return v1
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Alarm manager service (alarm) commands:"

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
    const-string v0, "  set-time TIME"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "    Set the system clock time to TIME where TIME is milliseconds"

    .line 27
    const-string v1, "    since the Epoch."

    .line 29
    const-string v2, "  set-timezone TZ"

    .line 31
    const-string v3, "    Set the system timezone to TZ where TZ is an Olson id."

    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "  get-config-version"

    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    const-string v0, "    Returns an integer denoting the version of device_config keys the service is sync\'ed to. As long as this returns the same version, the values of the config are guaranteed to remain the same."

    .line 43
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    return-void
.end method
