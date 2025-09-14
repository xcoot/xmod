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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14
    .line 15
    return-void
.end method

.method public static printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p1, "no %ss\n"

    .line 8
    .line 9
    .line 10
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    .line 30
    const-string v1, ""

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo v1, "s"

    .line 34
    .line 35
    .line 36
    :goto_0
    filled-new-array {v0, p2, v1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v0, "%d %s%s:\n"

    .line 41
    .line 42
    invoke-virtual {p0, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 43
    .line 44
    .line 45
    return p1
.end method

.method public static showHelp(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "  help\n"

    .line 5
    .line 6
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 7
    .line 8
    .line 9
    const-string v1, "    Prints this help text.\n\n"

    .line 10
    .line 11
    new-array v2, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "is-operation-safe"

    .line 17
    .line 18
    .line 19
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "  %s <OPERATION_ID>\n"

    .line 24
    .line 25
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    const-string v1, "    Checks if the give operation is safe \n\n"

    .line 29
    .line 30
    new-array v2, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "is-operation-safe-by-reason"

    .line 36
    .line 37
    .line 38
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "  %s <REASON_ID>\n"

    .line 43
    .line 44
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 45
    .line 46
    .line 47
    const-string v1, "    Checks if the operations are safe for the given reason\n\n"

    .line 48
    .line 49
    new-array v2, v0, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "set-operation-safe"

    .line 55
    .line 56
    .line 57
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "  %s <OPERATION_ID> <REASON_ID>\n"

    .line 62
    .line 63
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 64
    .line 65
    .line 66
    const-string v1, "    Emulates the result of the next call to check if the given operation is safe \n\n"

    .line 67
    .line 68
    new-array v2, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "list-owners"

    .line 74
    .line 75
    .line 76
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "  %s\n"

    .line 81
    .line 82
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 83
    .line 84
    .line 85
    const-string v1, "    Lists the device / profile owners per user \n\n"

    .line 86
    .line 87
    new-array v3, v0, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 90
    .line 91
    .line 92
    const-string/jumbo v1, "list-policy-exempt-apps"

    .line 93
    .line 94
    .line 95
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 100
    .line 101
    .line 102
    const-string v1, "    Lists the apps that are exempt from policies\n\n"

    .line 103
    .line 104
    new-array v3, v0, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 107
    .line 108
    .line 109
    const-string/jumbo v1, "set-active-admin"

    .line 110
    .line 111
    .line 112
    const-string v3, "--user"

    .line 113
    .line 114
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v4, "  %s [ %s <USER_ID> | current ] <COMPONENT>\n"

    .line 119
    .line 120
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    .line 122
    .line 123
    const-string v1, "    Sets the given component as active admin for an existing user.\n\n"

    .line 124
    .line 125
    new-array v5, v0, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    .line 129
    .line 130
    const-string/jumbo v1, "set-device-owner"

    .line 131
    .line 132
    .line 133
    const-string v5, "--device-owner-only"

    .line 134
    .line 135
    filled-new-array {v1, v3, v5}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v5, "  %s [ %s <USER_ID> | current *EXPERIMENTAL* ] [ %s ]<COMPONENT>\n"

    .line 140
    .line 141
    invoke-virtual {p0, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 142
    .line 143
    .line 144
    const-string v1, "    Sets the given component as active admin, and its package as device owner.\n\n"

    .line 145
    .line 146
    new-array v5, v0, [Ljava/lang/Object;

    .line 147
    .line 148
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 149
    .line 150
    .line 151
    const-string/jumbo v1, "set-profile-owner"

    .line 152
    .line 153
    .line 154
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 159
    .line 160
    .line 161
    const-string v1, "    Sets the given component as active admin and profile owner for an existing user.\n\n"

    .line 162
    .line 163
    new-array v5, v0, [Ljava/lang/Object;

    .line 164
    .line 165
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 166
    .line 167
    .line 168
    const-string/jumbo v1, "remove-active-admin"

    .line 169
    .line 170
    .line 171
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 176
    .line 177
    .line 178
    const-string v1, "    Disables an active admin, the admin must have declared android:testOnly in the application in its manifest. This will also remove device and profile owners.\n\n"

    .line 179
    .line 180
    new-array v5, v0, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 183
    .line 184
    .line 185
    const-string/jumbo v1, "clear-freeze-period-record"

    .line 186
    .line 187
    .line 188
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 193
    .line 194
    .line 195
    const-string v1, "    Clears framework-maintained record of past freeze periods that the device went through. For use during feature development to prevent triggering restriction on setting freeze periods.\n\n"

    .line 196
    .line 197
    new-array v5, v0, [Ljava/lang/Object;

    .line 198
    .line 199
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 200
    .line 201
    .line 202
    const-string/jumbo v1, "force-network-logs"

    .line 203
    .line 204
    .line 205
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 210
    .line 211
    .line 212
    const-string v1, "    Makes all network logs available to the DPC and triggers DeviceAdminReceiver.onNetworkLogsAvailable() if needed.\n\n"

    .line 213
    .line 214
    new-array v5, v0, [Ljava/lang/Object;

    .line 215
    .line 216
    invoke-virtual {p0, v1, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 217
    .line 218
    .line 219
    const-string/jumbo v1, "force-security-logs"

    .line 220
    .line 221
    .line 222
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 227
    .line 228
    .line 229
    const-string v1, "    Makes all security logs available to the DPC and triggers DeviceAdminReceiver.onSecurityLogsAvailable() if needed.\n\n"

    .line 230
    .line 231
    new-array v2, v0, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 234
    .line 235
    .line 236
    const-string/jumbo v1, "mark-profile-owner-on-organization-owned-device"

    .line 237
    .line 238
    .line 239
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 244
    .line 245
    .line 246
    const-string v1, "    Marks the profile owner of the given user as managing an organization-owneddevice. That will give it access to device identifiers (such as serial number, IMEI and MEID), as well as other privileges.\n\n"

    .line 247
    .line 248
    new-array v0, v0, [Ljava/lang/Object;

    .line 249
    .line 250
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 251
    .line 252
    .line 253
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
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

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string/jumbo v1, "mark-profile-owner-on-organization-owned-device"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0xc

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :sswitch_1
    const-string/jumbo v1, "force-security-logs"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const/16 v1, 0xb

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string/jumbo v1, "set-profile-owner"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const/4 v1, 0x7

    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :sswitch_3
    const-string/jumbo v1, "set-active-admin"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x5

    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_4
    const-string/jumbo v1, "clear-freeze-period-record"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    const/16 v1, 0x9

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :sswitch_5
    const-string/jumbo v1, "is-operation-safe"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    move v1, v4

    .line 99
    goto :goto_1

    .line 100
    :sswitch_6
    const-string/jumbo v1, "remove-active-admin"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    const/16 v1, 0x8

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :sswitch_7
    const-string/jumbo v1, "is-operation-safe-by-reason"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    move v1, v2

    .line 122
    goto :goto_1

    .line 123
    :sswitch_8
    const-string/jumbo v1, "set-operation-safe"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const/4 v1, 0x2

    .line 133
    goto :goto_1

    .line 134
    :sswitch_9
    const-string/jumbo v1, "list-owners"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    .line 143
    const/4 v1, 0x3

    .line 144
    goto :goto_1

    .line 145
    :sswitch_a
    const-string/jumbo v1, "set-device-owner"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_1

    .line 153
    .line 154
    const/4 v1, 0x6

    .line 155
    goto :goto_1

    .line 156
    :sswitch_b
    const-string/jumbo v1, "list-policy-exempt-apps"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_1

    .line 164
    .line 165
    const/4 v1, 0x4

    .line 166
    goto :goto_1

    .line 167
    :sswitch_c
    const-string/jumbo v1, "force-network-logs"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-eqz v1, :cond_1

    .line 175
    .line 176
    const/16 v1, 0xa

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    move v1, v3

    .line 180
    :goto_1
    const-string v5, "UNSAFE"

    .line 181
    .line 182
    const-string v6, "SAFE"

    .line 183
    .line 184
    const-string v7, "We have to wait for %d milliseconds...\n"

    .line 185
    .line 186
    const-wide/16 v8, 0x0

    .line 187
    .line 188
    const-string v10, "Success\n"

    .line 189
    .line 190
    packed-switch v1, :pswitch_data_0

    .line 191
    .line 192
    .line 193
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-nez p0, :cond_2

    .line 198
    .line 199
    move v3, v4

    .line 200
    goto :goto_2

    .line 201
    :cond_2
    const-string p0, "Usage: \n"

    .line 202
    .line 203
    new-array p1, v4, [Ljava/lang/Object;

    .line 204
    .line 205
    invoke-virtual {v0, p0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 206
    .line 207
    .line 208
    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .line 210
    .line 211
    :goto_2
    if-eqz v0, :cond_3

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 214
    .line 215
    .line 216
    :cond_3
    return v3

    .line 217
    :pswitch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 221
    .line 222
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 223
    .line 224
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 225
    .line 226
    invoke-virtual {p1, v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    .line 227
    .line 228
    .line 229
    new-array p0, v4, [Ljava/lang/Object;

    .line 230
    .line 231
    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 235
    .line 236
    .line 237
    return v4

    .line 238
    :goto_3
    :pswitch_1
    :try_start_3
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceSecurityLogs()J

    .line 241
    .line 242
    .line 243
    move-result-wide v1

    .line 244
    cmp-long p1, v1, v8

    .line 245
    .line 246
    if-nez p1, :cond_4

    .line 247
    .line 248
    new-array p0, v4, [Ljava/lang/Object;

    .line 249
    .line 250
    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 254
    .line 255
    .line 256
    return v4

    .line 257
    :cond_4
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v0, v7, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 266
    .line 267
    .line 268
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :goto_4
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceNetworkLogs()J

    .line 275
    .line 276
    .line 277
    move-result-wide v1

    .line 278
    cmp-long p1, v1, v8

    .line 279
    .line 280
    if-nez p1, :cond_5

    .line 281
    .line 282
    new-array p0, v4, [Ljava/lang/Object;

    .line 283
    .line 284
    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 288
    .line 289
    .line 290
    return v4

    .line 291
    :cond_5
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {v0, v7, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 300
    .line 301
    .line 302
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearSystemUpdatePolicyFreezePeriodRecord()V

    .line 309
    .line 310
    .line 311
    new-array p0, v4, [Ljava/lang/Object;

    .line 312
    .line 313
    invoke-virtual {v0, v10, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 317
    .line 318
    .line 319
    return v4

    .line 320
    :pswitch_4
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 324
    .line 325
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 326
    .line 327
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 328
    .line 329
    invoke-virtual {p1, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 330
    .line 331
    .line 332
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 333
    .line 334
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    const-string p1, "Success: Admin removed %s\n"

    .line 339
    .line 340
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 344
    .line 345
    .line 346
    return v4

    .line 347
    :pswitch_5
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetProfileOwner(Ljava/io/PrintWriter;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 351
    .line 352
    .line 353
    return v4

    .line 354
    :pswitch_6
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runSetDeviceOwner(Ljava/io/PrintWriter;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 358
    .line 359
    .line 360
    return v4

    .line 361
    :pswitch_7
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 365
    .line 366
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 367
    .line 368
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 369
    .line 370
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 371
    .line 372
    .line 373
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 374
    .line 375
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    const-string p1, "Success: Active admin set to component %s\n"

    .line 384
    .line 385
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 389
    .line 390
    .line 391
    return v4

    .line 392
    :pswitch_8
    :try_start_a
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 393
    .line 394
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->listPolicyExemptApps()Ljava/util/List;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    const-string/jumbo p1, "policy exempt app"

    .line 399
    .line 400
    .line 401
    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-nez p1, :cond_6

    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_6
    move v1, v4

    .line 409
    :goto_5
    if-ge v1, p1, :cond_7

    .line 410
    .line 411
    move-object v2, p0

    .line 412
    check-cast v2, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    const-string v3, "  %d: %s\n"

    .line 429
    .line 430
    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 431
    .line 432
    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_7
    :goto_6
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 437
    .line 438
    .line 439
    return v4

    .line 440
    :pswitch_9
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->runListOwners(Ljava/io/PrintWriter;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 444
    .line 445
    .line 446
    return v4

    .line 447
    :pswitch_a
    :try_start_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 464
    .line 465
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNextOperationSafety(II)V

    .line 466
    .line 467
    .line 468
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    const-string p1, "Next call to check operation %s will return %s\n"

    .line 481
    .line 482
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 486
    .line 487
    .line 488
    return v4

    .line 489
    :pswitch_b
    :try_start_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 498
    .line 499
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSafeOperation(I)Z

    .line 500
    .line 501
    .line 502
    move-result p0

    .line 503
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    if-eqz p0, :cond_8

    .line 508
    .line 509
    move-object v5, v6

    .line 510
    :cond_8
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    const-string p1, "Operations affected by %s are %s\n"

    .line 515
    .line 516
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 520
    .line 521
    .line 522
    return v4

    .line 523
    :pswitch_c
    :try_start_e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    move-result p1

    .line 531
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 532
    .line 533
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 534
    .line 535
    if-nez p0, :cond_9

    .line 536
    .line 537
    move p0, v3

    .line 538
    goto :goto_7

    .line 539
    :cond_9
    invoke-interface {p0, p1}, Landroid/app/admin/DevicePolicySafetyChecker;->getUnsafeOperationReason(I)I

    .line 540
    .line 541
    .line 542
    move-result p0

    .line 543
    :goto_7
    if-ne p0, v3, :cond_a

    .line 544
    .line 545
    goto :goto_8

    .line 546
    :cond_a
    move v2, v4

    .line 547
    :goto_8
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    if-eqz v2, :cond_b

    .line 552
    .line 553
    move-object v5, v6

    .line 554
    :cond_b
    invoke-static {p0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p0

    .line 558
    filled-new-array {p1, v5, p0}, [Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    const-string p1, "Operation %s is %s. Reason: %s\n"

    .line 563
    .line 564
    invoke-virtual {v0, p1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 568
    .line 569
    .line 570
    return v4

    .line 571
    :goto_9
    if-eqz v0, :cond_c

    .line 572
    .line 573
    :try_start_f
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 574
    .line 575
    .line 576
    goto :goto_a

    .line 577
    :catchall_1
    move-exception p1

    .line 578
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 579
    .line 580
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

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
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

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    const-string v0, "DevicePolicyManager Service (device_policy) commands:\n\n"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->showHelp(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 29
    .line 30
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const-string v1, "--user"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 24
    .line 25
    const/4 v1, -0x2

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "--device-owner-only"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v1, "Unknown option: "

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string v1, "Invalid component "

    .line 75
    .line 76
    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public final runListOwners(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    const-string v0, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasCallingOrSelfPermission(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/List;

    .line 28
    .line 29
    const-string/jumbo v0, "owner"

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->printAndGetSize(Ljava/io/PrintWriter;Ljava/util/Collection;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-ge v1, v0, :cond_5

    .line 41
    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/server/devicepolicy/OwnerShellData;

    .line 47
    .line 48
    iget v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, v2, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v4, "User %2d: admin=%s"

    .line 65
    .line 66
    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 67
    .line 68
    .line 69
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    const-string v3, ",DeviceOwner"

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    const-string v3, ",ProfileOwner"

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    iget v3, v2, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v4, ",ManagedProfileOwner(parentUserId=%d)"

    .line 102
    .line 103
    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-boolean v2, v2, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    .line 107
    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    const-string v2, ",Affiliated"

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
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

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 11
    .line 12
    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 13
    .line 14
    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "%s was already an admin for user %d. No need to set it again.\n"

    .line 36
    .line 37
    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 38
    .line 39
    .line 40
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 43
    .line 44
    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 45
    .line 46
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mSetDoOnly:Z

    .line 47
    .line 48
    xor-int/2addr v1, v6

    .line 49
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 56
    .line 57
    const/4 v1, 0x3

    .line 58
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "Success: Device owner set to package %s\n"

    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v0, "Active admin set to component %s\n"

    .line 89
    .line 90
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, " as device owner."

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    :catch_1
    move-exception p1

    .line 120
    if-eqz v2, :cond_1

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 125
    .line 126
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 127
    .line 128
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 129
    .line 130
    .line 131
    :cond_1
    throw p1
.end method

.method public final runSetProfileOwner(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "Can\'t set component "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->parseArgs()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 19
    .line 20
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;I)Z

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUserProvisioningState(II)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "Success: Active admin and profile owner set to %s for user %d\n"

    .line 53
    .line 54
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, " as profile owner for user "

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mComponent:Landroid/content/ComponentName;

    .line 96
    .line 97
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceShellCommand;->mUserId:I

    .line 98
    .line 99
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method
