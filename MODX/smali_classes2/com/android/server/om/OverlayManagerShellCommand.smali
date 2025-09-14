.class public final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TYPE_MAP:Ljava/util/Map;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const-string v1, "color"

    .line 18
    .line 19
    const-string/jumbo v3, "string"

    .line 20
    .line 21
    .line 22
    const-string v5, "drawable"

    .line 23
    .line 24
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/server/om/OverlayManagerShellCommand;->TYPE_MAP:Ljava/util/Map;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 7
    .line 8
    return-void
.end method

.method public static printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/content/om/OverlayInfo;->state:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const-string v0, "---"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "[x]"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v0, "[ ]"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " "

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final addOverlayValue(Landroid/content/om/FabricatedOverlay$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    sget-object v0, Lcom/android/server/om/OverlayManagerShellCommand;->TYPE_MAP:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x10

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    const-string v4, "0x"

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-static {p3, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    :goto_0
    const/4 v0, 0x3

    .line 53
    if-ne p3, v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    if-gez p3, :cond_3

    .line 60
    .line 61
    const-string/jumbo p3, "r"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p4, p3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p2, p0, p5}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    :goto_1
    invoke-virtual {p1, p2, p3, p0, p5}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    .line 92
    .line 93
    .line 94
    :goto_2
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 5

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
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    sparse-switch v2, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_0
    const-string v2, "fabricate"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :sswitch_1
    const-string v2, "disable"

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string v2, "list"

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    move v2, v4

    .line 58
    goto :goto_1

    .line 59
    :sswitch_3
    const-string v2, "enable-exclusive"

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    goto :goto_1

    .line 69
    :sswitch_4
    const-string v2, "lookup"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    const/4 v2, 0x5

    .line 78
    goto :goto_1

    .line 79
    :sswitch_5
    const-string v2, "enable"

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    move v2, v3

    .line 88
    goto :goto_1

    .line 89
    :sswitch_6
    const-string/jumbo v2, "set-priority"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    const/4 v2, 0x4

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    move v2, v1

    .line 101
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    return p0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runFabricate()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runLookup()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    return p0

    .line 119
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    return p0

    .line 124
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    return p0

    .line 129
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    return p0

    .line 134
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    return p0

    .line 139
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    .line 140
    .line 141
    .line 142
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return p0

    .line 144
    :goto_2
    const-string p1, "Remote exception: "

    .line 145
    .line 146
    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v2, "Error: "

    .line 153
    .line 154
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_4
    return v1

    .line 172
    nop

    .line 173
    :sswitch_data_0
    .sparse-switch
        -0x5120f151 -> :sswitch_6
        -0x4d6ada7d -> :sswitch_5
        -0x41645686 -> :sswitch_4
        -0x2f5d012c -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x639e22e8 -> :sswitch_1
        0x78377fcd -> :sswitch_0
    .end sparse-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Overlay manager (overlay) commands:"

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
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  dump [--verbose] [--user USER_ID] [[FIELD] PACKAGE[:NAME]]"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Print debugging information about the overlay manager."

    .line 26
    .line 27
    const-string v1, "    With optional parameters PACKAGE and NAME, limit output to the specified"

    .line 28
    .line 29
    const-string v2, "    overlay or target. With optional parameter FIELD, limit output to"

    .line 30
    .line 31
    const-string v3, "    the corresponding SettingsItem field. Field names are all lower case"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "    and omit the m prefix, i.e. \'userid\' for SettingsItem.mUserId."

    .line 37
    .line 38
    const-string v1, "  list [--user USER_ID] [PACKAGE[:NAME]]"

    .line 39
    .line 40
    const-string v2, "    Print information about target and overlay packages."

    .line 41
    .line 42
    const-string v3, "    Overlay packages are printed in priority order. With optional"

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "    parameters PACKAGE and NAME, limit output to the specified overlay or"

    .line 48
    .line 49
    const-string v1, "    target."

    .line 50
    .line 51
    const-string v2, "  enable [--user USER_ID] PACKAGE[:NAME]"

    .line 52
    .line 53
    const-string v3, "    Enable overlay within or owned by PACKAGE with optional unique NAME."

    .line 54
    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "  disable [--user USER_ID] PACKAGE[:NAME]"

    .line 59
    .line 60
    const-string v1, "    Disable overlay within or owned by PACKAGE with optional unique NAME."

    .line 61
    .line 62
    const-string v2, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    .line 63
    .line 64
    const-string v3, "    Enable overlay within or owned by PACKAGE and disable all other overlays"

    .line 65
    .line 66
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "    for its target package. If the --category option is given, only disables"

    .line 70
    .line 71
    const-string v1, "    other overlays in the same category."

    .line 72
    .line 73
    const-string v2, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    .line 74
    .line 75
    const-string v3, "    Change the priority of the overlay to be just higher than"

    .line 76
    .line 77
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "    the priority of PARENT If PARENT is the special keyword"

    .line 81
    .line 82
    const-string v1, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    .line 83
    .line 84
    const-string v2, "    If PARENT is the special keyword \'highest\', change priority of"

    .line 85
    .line 86
    const-string v3, "    PACKAGE to the highest priority."

    .line 87
    .line 88
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "  lookup [--user USER_ID] [--verbose] PACKAGE-TO-LOAD PACKAGE:TYPE/NAME"

    .line 92
    .line 93
    const-string v1, "    Load a package and print the value of a given resource"

    .line 94
    .line 95
    const-string v2, "    applying the current configuration and enabled overlays."

    .line 96
    .line 97
    const-string v3, "    For a more fine-grained alternative, use \'idmap2 lookup\'."

    .line 98
    .line 99
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v0, "  fabricate [--user USER_ID] [--target-name OVERLAYABLE] --target PACKAGE"

    .line 103
    .line 104
    const-string v1, "            --name NAME [--file FILE] "

    .line 105
    .line 106
    const-string v2, "            PACKAGE:TYPE/NAME ENCODED-TYPE-ID|TYPE-NAME ENCODED-VALUE"

    .line 107
    .line 108
    const-string v3, "    Create an overlay from a single resource. Caller must be root. Example:"

    .line 109
    .line 110
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "      fabricate --target android --name LighterGray \\"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "                android:color/lighter_gray 0x1c 0xffeeeeee"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final runEnableDisable(Z)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    const-string v2, "--user"

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string p0, "Error: Unknown option: "

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 50
    .line 51
    new-instance v3, Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 52
    .line 53
    invoke-direct {v3}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0, p1, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p0, p1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 65
    .line 66
    .line 67
    return v1
.end method

.method public final runEnableExclusive()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    const-string v5, "--category"

    .line 15
    .line 16
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    const-string v2, "--user"

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    const-string p0, "Error: Unknown option: "

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v4

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v1, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 58
    .line 59
    invoke-interface {p0, v0, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    xor-int/2addr p0, v4

    .line 64
    return p0

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 66
    .line 67
    invoke-interface {p0, v0, v4, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    xor-int/2addr p0, v4

    .line 72
    return p0
.end method

.method public final runFabricate()I
    .locals 21

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const-string v0, "Error: must be root to fabricate overlays through the shell"

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    const-string v5, ""

    .line 22
    .line 23
    move-object v8, v3

    .line 24
    move-object v14, v8

    .line 25
    move-object v6, v5

    .line 26
    move-object v7, v6

    .line 27
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    if-eqz v9, :cond_7

    .line 32
    .line 33
    const/4 v10, -0x1

    .line 34
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    sparse-switch v11, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :sswitch_0
    const-string v11, "--target"

    .line 43
    .line 44
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    if-nez v11, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v10, 0x5

    .line 52
    goto :goto_1

    .line 53
    :sswitch_1
    const-string v11, "--user"

    .line 54
    .line 55
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-nez v11, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v10, 0x4

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string v11, "--name"

    .line 65
    .line 66
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-nez v11, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v10, 0x3

    .line 74
    goto :goto_1

    .line 75
    :sswitch_3
    const-string v11, "--file"

    .line 76
    .line 77
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-nez v11, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move v10, v0

    .line 85
    goto :goto_1

    .line 86
    :sswitch_4
    const-string v11, "--config"

    .line 87
    .line 88
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-nez v11, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move v10, v4

    .line 96
    goto :goto_1

    .line 97
    :sswitch_5
    const-string v11, "--target-name"

    .line 98
    .line 99
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-nez v11, :cond_6

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    move v10, v1

    .line 107
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 108
    .line 109
    .line 110
    const-string v0, "Error: Unknown option: "

    .line 111
    .line 112
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return v4

    .line 120
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    goto :goto_0

    .line 125
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    goto :goto_0

    .line 138
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    goto :goto_0

    .line 143
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    goto :goto_0

    .line 148
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    goto :goto_0

    .line 153
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-eqz v9, :cond_8

    .line 158
    .line 159
    const-string v0, "Error: Missing required arg \'--name\'"

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return v4

    .line 165
    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_9

    .line 170
    .line 171
    const-string v0, "Error: Missing required arg \'--target\'"

    .line 172
    .line 173
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return v4

    .line 177
    :cond_9
    if-eqz v8, :cond_a

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-lez v9, :cond_a

    .line 184
    .line 185
    const-string v0, "Error: When passing --file don\'t pass resource name, type, and value as well"

    .line 186
    .line 187
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return v4

    .line 191
    :cond_a
    new-instance v2, Landroid/content/om/FabricatedOverlay$Builder;

    .line 192
    .line 193
    const-string v9, "com.android.shell"

    .line 194
    .line 195
    invoke-direct {v2, v9, v5, v6}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v7}, Landroid/content/om/FabricatedOverlay$Builder;->setTargetOverlayable(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-eqz v8, :cond_16

    .line 203
    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    new-instance v7, Ljava/io/File;

    .line 209
    .line 210
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-nez v8, :cond_b

    .line 218
    .line 219
    const-string v0, "Error: File does not exist"

    .line 220
    .line 221
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_9

    .line 225
    .line 226
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v8, :cond_c

    .line 231
    .line 232
    const-string v0, "Error: File is unreadable"

    .line 233
    .line 234
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_9

    .line 238
    .line 239
    :cond_c
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    .line 240
    .line 241
    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .line 243
    .line 244
    :try_start_1
    invoke-static {v8}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    :goto_2
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-eq v9, v0, :cond_d

    .line 253
    .line 254
    if-eq v9, v4, :cond_d

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_d
    const-string/jumbo v9, "overlay"

    .line 258
    .line 259
    .line 260
    invoke-interface {v7, v0, v3, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_e
    :goto_3
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    if-eq v9, v4, :cond_14

    .line 268
    .line 269
    if-ne v9, v0, :cond_e

    .line 270
    .line 271
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    const-string v10, "item"

    .line 276
    .line 277
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    if-nez v10, :cond_f

    .line 282
    .line 283
    const-string v10, "Error: Unexpected tag: %s at line %d"

    .line 284
    .line 285
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    filled-new-array {v9, v11}, [Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    invoke-static {v10, v9}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    move-object v3, v0

    .line 307
    goto/16 :goto_5

    .line 308
    .line 309
    :cond_f
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->isEmptyElementTag()Z

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    if-nez v9, :cond_10

    .line 314
    .line 315
    const-string v0, "Error: item tag must be empty"

    .line 316
    .line 317
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .line 319
    .line 320
    :goto_4
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    .line 322
    .line 323
    goto/16 :goto_9

    .line 324
    .line 325
    :catch_0
    move-exception v0

    .line 326
    goto/16 :goto_7

    .line 327
    .line 328
    :catch_1
    move-exception v0

    .line 329
    goto/16 :goto_8

    .line 330
    .line 331
    :cond_10
    :try_start_3
    const-string/jumbo v9, "target"

    .line 332
    .line 333
    .line 334
    invoke-interface {v7, v3, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v10

    .line 342
    if-eqz v10, :cond_11

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v3, "Error: target name missing at line "

    .line 350
    .line 351
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_11
    const/16 v10, 0x2f

    .line 370
    .line 371
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    if-gez v10, :cond_12

    .line 376
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v3, "Error: target malformed, missing \'/\' at line "

    .line 383
    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_12
    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v18

    .line 406
    const-string/jumbo v10, "value"

    .line 407
    .line 408
    .line 409
    invoke-interface {v7, v3, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v19

    .line 413
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 414
    .line 415
    .line 416
    move-result v10

    .line 417
    if-eqz v10, :cond_13

    .line 418
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v3, "Error: value missing at line "

    .line 425
    .line 426
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    goto :goto_4

    .line 444
    :cond_13
    const-string v10, "config"

    .line 445
    .line 446
    invoke-interface {v7, v3, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v20

    .line 450
    new-instance v10, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const/16 v11, 0x3a

    .line 459
    .line 460
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v17

    .line 470
    move-object/from16 v15, p0

    .line 471
    .line 472
    move-object/from16 v16, v2

    .line 473
    .line 474
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/om/OverlayManagerShellCommand;->addOverlayValue(Landroid/content/om/FabricatedOverlay$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 475
    .line 476
    .line 477
    goto/16 :goto_3

    .line 478
    .line 479
    :cond_14
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 480
    .line 481
    .line 482
    move v4, v1

    .line 483
    goto :goto_9

    .line 484
    :goto_5
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 485
    .line 486
    .line 487
    goto :goto_6

    .line 488
    :catchall_1
    move-exception v0

    .line 489
    move-object v5, v0

    .line 490
    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 491
    .line 492
    .line 493
    :goto_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 494
    :goto_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 495
    .line 496
    .line 497
    goto :goto_9

    .line 498
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 499
    .line 500
    .line 501
    :goto_9
    if-eqz v4, :cond_15

    .line 502
    .line 503
    return v4

    .line 504
    :cond_15
    :goto_a
    move-object/from16 v3, p0

    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v12

    .line 515
    const-string v0, " "

    .line 516
    .line 517
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-static {v0, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v13

    .line 525
    move-object/from16 v9, p0

    .line 526
    .line 527
    move-object v10, v2

    .line 528
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/om/OverlayManagerShellCommand;->addOverlayValue(Landroid/content/om/FabricatedOverlay$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    goto :goto_a

    .line 532
    :goto_b
    iget-object v0, v3, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 533
    .line 534
    new-instance v3, Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 535
    .line 536
    invoke-direct {v3}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {v3, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-virtual {v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-interface {v0, v2}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 552
    .line 553
    .line 554
    return v1

    .line 555
    :sswitch_data_0
    .sparse-switch
        -0x37c14c59 -> :sswitch_5
        0x3e4cd0e2 -> :sswitch_4
        0x4f742b1c -> :sswitch_3
        0x4f77b02b -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x5a8bbf31 -> :sswitch_0
    .end sparse-switch

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runList()I
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    const-string v4, "--user"

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    const-string p0, "Error: Unknown option: "

    .line 27
    .line 28
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 52
    .line 53
    invoke-interface {v5, v2, v4}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 64
    .line 65
    invoke-interface {p0, v2, v4}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-static {v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return v3

    .line 75
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    move v2, v3

    .line 83
    :goto_1
    if-ge v2, p0, :cond_4

    .line 84
    .line 85
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 90
    .line 91
    invoke-static {v1, v4}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 92
    .line 93
    .line 94
    add-int/2addr v2, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    return v3

    .line 97
    :cond_5
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 98
    .line 99
    invoke-interface {p0, v4}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_7

    .line 116
    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    move v6, v3

    .line 137
    :goto_3
    if-ge v6, v5, :cond_6

    .line 138
    .line 139
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    check-cast v7, Landroid/content/om/OverlayInfo;

    .line 144
    .line 145
    invoke-static {v1, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 146
    .line 147
    .line 148
    add-int/2addr v6, v0

    .line 149
    goto :goto_3

    .line 150
    :cond_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_7
    return v3
.end method

.method public final runLookup()I
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    move v5, v4

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    if-eqz v6, :cond_2

    .line 18
    .line 19
    const-string v7, "--user"

    .line 20
    .line 21
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-nez v7, :cond_1

    .line 26
    .line 27
    const-string v5, "--verbose"

    .line 28
    .line 29
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    const-string p0, "Error: Unknown option: "

    .line 36
    .line 37
    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_0
    move v5, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const-string v8, "(.*?):(.*?)/(.*?)"

    .line 65
    .line 66
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_3

    .line 79
    .line 80
    const-string p0, "Error: bad resource name, doesn\'t match package:type/name"

    .line 81
    .line 82
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v0

    .line 86
    :cond_3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {p0, v9, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    :try_start_1
    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    :try_start_2
    new-instance v6, Landroid/util/TypedValue;

    .line 112
    .line 113
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v7, v6, v3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {p0, v7, v6, v0}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    if-eqz v5, :cond_4

    .line 135
    .line 136
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :cond_4
    :goto_1
    invoke-interface {v9, v6}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    if-eqz v10, :cond_5

    .line 148
    .line 149
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v9, " -> "

    .line 162
    .line 163
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .line 175
    .line 176
    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 177
    .line 178
    .line 179
    return v3

    .line 180
    :catch_0
    :try_start_3
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    const/4 v9, 0x2

    .line 185
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    const/4 v10, 0x3

    .line 190
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {p0, v8, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_8

    .line 199
    .line 200
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-eqz v5, :cond_6

    .line 205
    .line 206
    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    new-instance v5, Landroid/util/TypedValue;

    .line 214
    .line 215
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 216
    .line 217
    .line 218
    move v6, v3

    .line 219
    :goto_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    if-ge v6, v8, :cond_7

    .line 224
    .line 225
    invoke-virtual {p0, v6, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    add-int/2addr v6, v0

    .line 236
    goto :goto_3

    .line 237
    :cond_7
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 241
    .line 242
    .line 243
    return v3

    .line 244
    :cond_8
    :try_start_4
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 245
    .line 246
    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    .line 247
    .line 248
    .line 249
    throw p0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    :catch_1
    :try_start_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v1, "Error: failed to get the resource "

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 271
    .line 272
    .line 273
    return v0

    .line 274
    :goto_4
    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    :catch_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    filled-new-array {v6, p0}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    const-string v1, "Error: failed to get resources for package %s for user %d"

    .line 287
    .line 288
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return v0
.end method

.method public final runSetPriority()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v1, "--user"

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string p0, "Error: Unknown option: "

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v3

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v4, "highest"

    .line 49
    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 57
    .line 58
    invoke-interface {p0, v0, v1}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    xor-int/2addr p0, v3

    .line 63
    return p0

    .line 64
    :cond_2
    const-string v4, "lowest"

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 73
    .line 74
    invoke-interface {p0, v0, v1}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    xor-int/2addr p0, v3

    .line 79
    return p0

    .line 80
    :cond_3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 81
    .line 82
    invoke-interface {p0, v0, v2, v1}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    xor-int/2addr p0, v3

    .line 87
    return p0
.end method
