.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mComponent:Landroid/content/ComponentName;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mSetDoOnly:Z

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 13
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 15
    return-void
.end method

.method public static printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo p1, "no %ss\n"

    .line 10
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne p1, v1, :cond_1

    .line 30
    const-string v1, ""

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo v1, "s"

    .line 36
    :goto_0
    filled-new-array {v0, p2, v1}, [Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    const-string v0, "%d %s%s:\n"

    .line 42
    invoke-virtual {p0, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 45
    return p1
.end method

.method public static showHelp(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "  help\n"

    .line 6
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 9
    const-string v1, "    Prints this help text.\n\n"

    .line 11
    new-array v2, v0, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 16
    const-string/jumbo v1, "is-operation-safe"

    .line 19
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "  %s <OPERATION_ID>\n"

    .line 25
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 28
    const-string v1, "    Checks if the give operation is safe \n\n"

    .line 30
    new-array v2, v0, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 35
    const-string/jumbo v1, "is-operation-safe-by-reason"

    .line 38
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    const-string v2, "  %s <REASON_ID>\n"

    .line 44
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 47
    const-string v1, "    Checks if the operations are safe for the given reason\n\n"

    .line 49
    new-array v2, v0, [Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 54
    const-string/jumbo v1, "set-operation-safe"

    .line 57
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    const-string v2, "  %s <OPERATION_ID> <REASON_ID>\n"

    .line 63
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 66
    const-string v1, "    Emulates the result of the next call to check if the given operation is safe \n\n"

    .line 68
    new-array v2, v0, [Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 73
    const-string/jumbo v1, "list-owners"

    .line 76
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    const-string v2, "  %s\n"

    .line 82
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 85
    const-string v1, "    Lists the device / profile owners per user \n\n"

    .line 87
    new-array v3, v0, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 92
    const-string/jumbo v1, "list-policy-exempt-apps"

    .line 95
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 102
    const-string v1, "    Lists the apps that are exempt from policies\n\n"

    .line 104
    new-array v3, v0, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 109
    const-string/jumbo v1, "set-active-admin"

    .line 112
    const-string v3, "--user"

    .line 114
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    const-string v4, "  %s [ %s <USER_ID> | current ] <COMPONENT>\n"

    .line 120
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 123
    const-string v1, "    Sets the given component as active admin for an existing user.\n\n"

    .line 125
    new-array v5, v0, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 130
    const-string/jumbo v1, "set-device-owner"

    .line 133
    const-string v5, "--device-owner-only"

    .line 135
    filled-new-array {v1, v3, v5}, [Ljava/lang/Object;

    .line 138
    move-result-object v1

    .line 139
    const-string v5, "  %s [ %s <USER_ID> | current *EXPERIMENTAL* ] [ %s ]<COMPONENT>\n"

    .line 141
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 144
    const-string v1, "    Sets the given component as active admin, and its package as device owner.\n\n"

    .line 146
    new-array v5, v0, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 151
    const-string/jumbo v1, "set-profile-owner"

    .line 154
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 161
    const-string v1, "    Sets the given component as active admin and profile owner for an existing user.\n\n"

    .line 163
    new-array v5, v0, [Ljava/lang/Object;

    .line 165
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 168
    const-string/jumbo v1, "remove-active-admin"

    .line 171
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 178
    const-string v1, "    Disables an active admin, the admin must have declared android:testOnly in the application in its manifest. This will also remove device and profile owners.\n\n"

    .line 180
    new-array v5, v0, [Ljava/lang/Object;

    .line 182
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 185
    const-string/jumbo v1, "clear-freeze-period-record"

    .line 188
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 195
    const-string v1, "    Clears framework-maintained record of past freeze periods that the device went through. For use during feature development to prevent triggering restriction on setting freeze periods.\n\n"

    .line 197
    new-array v5, v0, [Ljava/lang/Object;

    .line 199
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 202
    const-string/jumbo v1, "force-network-logs"

    .line 205
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 212
    const-string v1, "    Makes all network logs available to the DPC and triggers DeviceAdminReceiver.onNetworkLogsAvailable() if needed.\n\n"

    .line 214
    new-array v5, v0, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 219
    const-string/jumbo v1, "force-security-logs"

    .line 222
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 229
    const-string v1, "    Makes all security logs available to the DPC and triggers DeviceAdminReceiver.onSecurityLogsAvailable() if needed.\n\n"

    .line 231
    new-array v2, v0, [Ljava/lang/Object;

    .line 233
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 236
    const-string/jumbo v1, "mark-profile-owner-on-organization-owned-device"

    .line 239
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 246
    const-string v1, "    Marks the profile owner of the given user as managing an organization-owneddevice. That will give it access to device identifiers (such as serial number, IMEI and MEID), as well as other privileges.\n\n"

    .line 248
    new-array v0, v0, [Ljava/lang/Object;

    .line 250
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 253
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 11

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
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, -0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    sparse-switch v1, :sswitch_data_0

    .line 22
    goto/16 :goto_0

    .line 24
    :sswitch_0
    const-string/jumbo v1, "mark-profile-owner-on-organization-owned-device"

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 33
    const/16 v1, 0xc

    .line 35
    goto/16 :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_9

    .line 40
    :sswitch_1
    const-string/jumbo v1, "force-security-logs"

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 49
    const/16 v1, 0xb

    .line 51
    goto/16 :goto_1

    .line 53
    :sswitch_2
    const-string/jumbo v1, "set-profile-owner"

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x7

    .line 63
    goto/16 :goto_1

    .line 65
    :sswitch_3
    const-string/jumbo v1, "set-active-admin"

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x5

    .line 75
    goto/16 :goto_1

    .line 77
    :sswitch_4
    const-string/jumbo v1, "clear-freeze-period-record"

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 86
    const/16 v1, 0x9

    .line 88
    goto :goto_1

    .line 89
    :sswitch_5
    const-string/jumbo v1, "is-operation-safe"

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_1

    .line 98
    move v1, v4

    .line 99
    goto :goto_1

    .line 100
    :sswitch_6
    const-string/jumbo v1, "remove-active-admin"

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_1

    .line 109
    const/16 v1, 0x8

    .line 111
    goto :goto_1

    .line 112
    :sswitch_7
    const-string/jumbo v1, "is-operation-safe-by-reason"

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_1

    .line 121
    move v1, v2

    .line 122
    goto :goto_1

    .line 123
    :sswitch_8
    const-string/jumbo v1, "set-operation-safe"

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x2

    .line 133
    goto :goto_1

    .line 134
    :sswitch_9
    const-string/jumbo v1, "list-owners"

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_1

    .line 143
    const/4 v1, 0x3

    .line 144
    goto :goto_1

    .line 145
    :sswitch_a
    const-string/jumbo v1, "set-device-owner"

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x6

    .line 155
    goto :goto_1

    .line 156
    :sswitch_b
    const-string/jumbo v1, "list-policy-exempt-apps"

    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_1

    .line 165
    const/4 v1, 0x4

    .line 166
    goto :goto_1

    .line 167
    :sswitch_c
    const-string/jumbo v1, "force-network-logs"

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-eqz v1, :cond_1

    .line 176
    const/16 v1, 0xa

    .line 178
    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    move v1, v3

    .line 180
    :goto_1
    const-string v5, "UNSAFE"

    .line 182
    const-string v6, "SAFE"

    .line 184
    const-string v7, "We have to wait for %d milliseconds...\n"

    .line 186
    const-wide/16 v8, 0x0

    .line 188
    const-string v10, "Success\n"

    .line 190
    packed-switch v1, :pswitch_data_0

    .line 193
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 196
    move-result p0

    .line 197
    if-nez p0, :cond_2

    .line 199
    move v3, v4

    .line 200
    goto :goto_2

    .line 201
    :cond_2
    const-string p0, "Usage: \n"

    .line 203
    new-array p1, v4, [Ljava/lang/Object;

    .line 205
    invoke-virtual {v0, p0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 208
    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_2
    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 216
    :cond_3
    return v3

    .line 217
    :pswitch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 220
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 222
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 224
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 226
    invoke-virtual {p1, v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    .line 229
    new-array p0, v4, [Ljava/lang/Object;

    .line 231
    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 237
    return v4

    .line 238
    :goto_3
    :pswitch_1
    :try_start_3
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 240
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceSecurityLogs()J

    .line 243
    move-result-wide v1

    .line 244
    cmp-long p1, v1, v8

    .line 246
    if-nez p1, :cond_4

    .line 248
    new-array p0, v4, [Ljava/lang/Object;

    .line 250
    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 256
    return v4

    .line 257
    :cond_4
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 260
    move-result-object p1

    .line 261
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v0, v7, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 268
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 271
    goto :goto_3

    .line 272
    :goto_4
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 274
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceNetworkLogs()J

    .line 277
    move-result-wide v1

    .line 278
    cmp-long p1, v1, v8

    .line 280
    if-nez p1, :cond_5

    .line 282
    new-array p0, v4, [Ljava/lang/Object;

    .line 284
    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 290
    return v4

    .line 291
    :cond_5
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 294
    move-result-object p1

    .line 295
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {v0, v7, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 302
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 305
    goto :goto_4

    .line 306
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearSystemUpdatePolicyFreezePeriodRecord()V

    .line 311
    new-array p0, v4, [Ljava/lang/Object;

    .line 313
    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 316
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 319
    return v4

    .line 320
    :pswitch_4
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 323
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 325
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 327
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 329
    invoke-virtual {p1, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 332
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 334
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 337
    move-result-object p0

    .line 338
    const-string p1, "Success: Admin removed %s\n"

    .line 340
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 343
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 346
    return v4

    .line 347
    :pswitch_5
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetProfileOwner(Ljava/io/PrintWriter;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 350
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 353
    return v4

    .line 354
    :pswitch_6
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetDeviceOwner(Ljava/io/PrintWriter;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 357
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 360
    return v4

    .line 361
    :pswitch_7
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 364
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 366
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 368
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 370
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 373
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 375
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 378
    move-result-object p0

    .line 379
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 382
    move-result-object p0

    .line 383
    const-string p1, "Success: Active admin set to component %s\n"

    .line 385
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 388
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 391
    return v4

    .line 392
    :pswitch_8
    :try_start_a
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 394
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listPolicyExemptApps()Ljava/util/List;

    .line 397
    move-result-object p0

    .line 398
    const-string/jumbo p1, "policy exempt app"

    .line 401
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    .line 404
    move-result p1

    .line 405
    if-nez p1, :cond_6

    .line 407
    goto :goto_6

    .line 408
    :cond_6
    move v1, v4

    .line 409
    :goto_5
    if-ge v1, p1, :cond_7

    .line 411
    move-object v2, p0

    .line 412
    check-cast v2, Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Ljava/lang/String;

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    move-result-object v3

    .line 424
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 427
    move-result-object v2

    .line 428
    const-string v3, "  %d: %s\n"

    .line 430
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 435
    goto :goto_5

    .line 436
    :cond_7
    :goto_6
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 439
    return v4

    .line 440
    :pswitch_9
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListOwners(Ljava/io/PrintWriter;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 443
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 446
    return v4

    .line 447
    :pswitch_a
    :try_start_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 450
    move-result-object p1

    .line 451
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 454
    move-result p1

    .line 455
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 458
    move-result-object v1

    .line 459
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 462
    move-result v1

    .line 463
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 465
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNextOperationSafety(II)V

    .line 468
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    .line 471
    move-result-object p0

    .line 472
    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 475
    move-result-object p1

    .line 476
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 479
    move-result-object p0

    .line 480
    const-string p1, "Next call to check operation %s will return %s\n"

    .line 482
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 485
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 488
    return v4

    .line 489
    :pswitch_b
    :try_start_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 492
    move-result-object p1

    .line 493
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 496
    move-result p1

    .line 497
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSafeOperation(I)Z

    .line 502
    move-result p0

    .line 503
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 506
    move-result-object p1

    .line 507
    if-eqz p0, :cond_8

    .line 509
    move-object v5, v6

    .line 510
    :cond_8
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 513
    move-result-object p0

    .line 514
    const-string p1, "Operations affected by %s are %s\n"

    .line 516
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 519
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 522
    return v4

    .line 523
    :pswitch_c
    :try_start_e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 526
    move-result-object p1

    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 530
    move-result p1

    .line 531
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 533
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 535
    if-nez p0, :cond_9

    .line 537
    move p0, v3

    .line 538
    goto :goto_7

    .line 539
    :cond_9
    invoke-interface {p0, p1}, Landroid/app/admin/DevicePolicySafetyChecker;->getUnsafeOperationReason(I)I

    .line 542
    move-result p0

    .line 543
    :goto_7
    if-ne p0, v3, :cond_a

    .line 545
    goto :goto_8

    .line 546
    :cond_a
    move v2, v4

    .line 547
    :goto_8
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    .line 550
    move-result-object p1

    .line 551
    if-eqz v2, :cond_b

    .line 553
    move-object v5, v6

    .line 554
    :cond_b
    invoke-static {p0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 557
    move-result-object p0

    .line 558
    filled-new-array {p1, v5, p0}, [Ljava/lang/Object;

    .line 561
    move-result-object p0

    .line 562
    const-string p1, "Operation %s is %s. Reason: %s\n"

    .line 564
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 567
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 570
    return v4

    .line 571
    :goto_9
    if-eqz v0, :cond_c

    .line 573
    :try_start_f
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 576
    goto :goto_a

    .line 577
    :catchall_1
    move-exception p1

    .line 578
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 581
    :cond_c
    :goto_a
    throw p0

    .line 582
    nop

    .line 583
    :sswitch_data_0
    .sparse-switch
        -0x7bce5670 -> :sswitch_c
        -0x6c7042ec -> :sswitch_b
        -0x6ace5bf9 -> :sswitch_a
        -0x3ffc2fd1 -> :sswitch_9
        -0x35f34b02 -> :sswitch_8
        -0x358ebd5d -> :sswitch_7
        -0x2e4a238f -> :sswitch_6
        -0x226644ca -> :sswitch_5
        -0x1ffc3f59 -> :sswitch_4
        0x20a8d153 -> :sswitch_3
        0x2622c764 -> :sswitch_2
        0x4f01fcba -> :sswitch_1
        0x59fd14e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    const-string v0, "DevicePolicyManager Service (device_policy) commands:\n\n"

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 13
    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 31
    :cond_0
    :goto_0
    throw v0
.end method

.method public final parseArgs()V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 7
    const-string v1, "--user"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 25
    const/4 v1, -0x2

    .line 26
    if-ne v0, v1, :cond_0

    .line 28
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "--device-owner-only"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 43
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string v1, "Unknown option: "

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 69
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 71
    return-void

    .line 72
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    const-string v1, "Invalid component "

    .line 76
    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
.end method

.method public final runListOwners(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    const-string v0, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasCallingOrSelfPermission(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 14
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/List;

    .line 29
    const-string/jumbo v0, "owner"

    .line 32
    invoke-static {p1, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-ge v1, v0, :cond_5

    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 48
    iget v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v3

    .line 54
    iget-object v4, v2, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    .line 56
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    const-string v4, "User %2d: admin=%s"

    .line 66
    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 69
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    .line 71
    if-eqz v3, :cond_1

    .line 73
    const-string v3, ",DeviceOwner"

    .line 75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    .line 80
    if-eqz v3, :cond_2

    .line 82
    const-string v3, ",ProfileOwner"

    .line 84
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    :cond_2
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    .line 89
    if-eqz v3, :cond_3

    .line 91
    iget v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v3

    .line 97
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 101
    const-string v4, ",ManagedProfileOwner(parentUserId=%d)"

    .line 103
    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 106
    :cond_3
    iget-boolean v2, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    .line 108
    if-eqz v2, :cond_4

    .line 110
    const-string v2, ",Affiliated"

    .line 112
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_5
    return-void
.end method

.method public final runSetDeviceOwner(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "Can\'t set package "

    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 12
    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 14
    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 21
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v4

    .line 31
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    const-string v4, "%s was already an admin for user %d. No need to set it again.\n"

    .line 37
    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 40
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 42
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 44
    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 46
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    .line 48
    xor-int/2addr v1, v6

    .line 49
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    .line 52
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    if-eqz v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 57
    const/4 v1, 0x3

    .line 58
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 63
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 65
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    const-string v1, "Success: Device owner set to package %s\n"

    .line 75
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 78
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 80
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 87
    move-result-object p0

    .line 88
    const-string v0, "Active admin set to component %s\n"

    .line 90
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 93
    return-void

    .line 94
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, " as device owner."

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    :catch_1
    move-exception p1

    .line 120
    if-eqz v2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 124
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 126
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 128
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 131
    :cond_1
    throw p1
.end method

.method public final runSetProfileOwner(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "Can\'t set component "

    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 6
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 10
    const/4 v3, 0x1

    .line 11
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 18
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 20
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;I)Z

    .line 25
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 30
    const/4 v1, 0x3

    .line 31
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 36
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 38
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p0

    .line 48
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    const-string v0, "Success: Active admin and profile owner set to %s for user %d\n"

    .line 54
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 57
    return-void

    .line 58
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 67
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, " as profile owner for user "

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 95
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 97
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 99
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 102
    throw p1
.end method
