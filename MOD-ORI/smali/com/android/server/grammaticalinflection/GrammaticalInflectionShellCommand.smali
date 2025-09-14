.class public final Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GRAMMATICAL_GENDER_MAP:Landroid/util/SparseArray;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mBinderService:Landroid/app/IGrammaticalInflectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->GRAMMATICAL_GENDER_MAP:Landroid/util/SparseArray;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "Not specified (0)"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const-string v2, "Neuter (1)"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    const-string v2, "Feminine (2)"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    const-string v2, "Masculine (3)"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/IGrammaticalInflectionManager;Landroid/content/AttributionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mBinderService:Landroid/app/IGrammaticalInflectionManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mAttributionSource:Landroid/content/AttributionSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 8

    .line 1
    const-string v0, "--user"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const-string v2, "Unknown option: "

    .line 12
    .line 13
    const-string v3, "Remote Exception: "

    .line 14
    .line 15
    const-string/jumbo v4, "set-system-grammatical-gender"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_4

    .line 23
    .line 24
    const-string/jumbo v4, "get-system-grammatical-gender"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mBinderService:Landroid/app/IGrammaticalInflectionManager;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mAttributionSource:Landroid/content/AttributionSource;

    .line 51
    .line 52
    invoke-interface {v0, v2, p1}, Landroid/app/IGrammaticalInflectionManager;->getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v2, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->GRAMMATICAL_GENDER_MAP:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v3, p1, p0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return v1

    .line 81
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    :cond_5
    :goto_2
    move v4, v1

    .line 111
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-nez v5, :cond_6

    .line 116
    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionShellCommand;->mBinderService:Landroid/app/IGrammaticalInflectionManager;

    .line 118
    .line 119
    invoke-interface {v0, v4, p1}, Landroid/app/IGrammaticalInflectionManager;->setSystemWideGrammaticalGender(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catch_1
    move-exception p1

    .line 124
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v3, p1, p0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 129
    .line 130
    .line 131
    :goto_4
    return v1

    .line 132
    :cond_6
    const/4 v6, -0x1

    .line 133
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    sparse-switch v7, :sswitch_data_0

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :sswitch_0
    const-string v7, "--grammaticalGender"

    .line 142
    .line 143
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-nez v7, :cond_7

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_7
    const/4 v6, 0x2

    .line 151
    goto :goto_5

    .line 152
    :sswitch_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-nez v7, :cond_8

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_8
    const/4 v6, 0x1

    .line 160
    goto :goto_5

    .line 161
    :sswitch_2
    const-string v7, "-g"

    .line 162
    .line 163
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-nez v7, :cond_9

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_9
    move v6, v1

    .line 171
    :goto_5
    packed-switch v6, :pswitch_data_0

    .line 172
    .line 173
    .line 174
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    goto :goto_3

    .line 193
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-nez v4, :cond_a

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    sget-object v5, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    .line 205
    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_5

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x5da -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x7825c8af -> :sswitch_0
    .end sparse-switch

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Grammatical inflection manager (grammatical_inflection) shell commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "      Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  set-system-grammatical-gender [--user <USER_ID>] [--grammaticalGender <GRAMMATICAL_GENDER>]"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "      Set the system grammatical gender for system."

    .line 26
    .line 27
    const-string v1, "      --user <USER_ID>: apply for the given user, the current user is used when unspecified."

    .line 28
    .line 29
    const-string v2, "      --grammaticalGender <GRAMMATICAL_GENDER>: The terms of address the user preferred in system, not specified (0) is used when unspecified."

    .line 30
    .line 31
    const-string v3, "                 eg. 0 = not_specified, 1 = neuter, 2 = feminine, 3 = masculine."

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "  get-system-grammatical-gender [--user <USER_ID>]"

    .line 37
    .line 38
    const-string v2, "      Get the system grammatical gender for system."

    .line 39
    .line 40
    invoke-static {p0, v0, v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
