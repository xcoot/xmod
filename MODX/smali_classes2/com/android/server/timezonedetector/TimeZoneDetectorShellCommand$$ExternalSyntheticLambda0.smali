.class public final synthetic Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_1
    const/4 v0, 0x0

    .line 25
    move-object v1, v0

    .line 26
    move-object v2, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    const-string v4, "--suggestion"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    const-string v1, "--status"

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->parseCommandlineArg(Ljava/lang/String;)Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v0, "Unknown option: "

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    if-eqz v1, :cond_8

    .line 76
    .line 77
    if-eqz v2, :cond_7

    .line 78
    .line 79
    const-string p0, "UNCERTAIN"

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    move-object p0, v0

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const-string p0, "EMPTY"

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_4

    .line 96
    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v3, Ljava/util/StringTokenizer;

    .line 108
    .line 109
    const-string v4, ","

    .line 110
    .line 111
    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    if-nez p0, :cond_6

    .line 133
    .line 134
    new-instance p0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 135
    .line 136
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    .line 137
    .line 138
    .line 139
    move-object v0, p0

    .line 140
    goto :goto_3

    .line 141
    :cond_6
    new-instance v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 142
    .line 143
    invoke-direct {v0, v2, v3, p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_3
    new-instance p0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 147
    .line 148
    invoke-direct {p0, v1, v0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;-><init>(Landroid/app/time/LocationTimeZoneAlgorithmStatus;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    .line 149
    .line 150
    .line 151
    const-string v0, "Command line injection"

    .line 152
    .line 153
    filled-new-array {v0}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->addDebugInfo([Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    const-string v0, "Missing --status"

    .line 164
    .line 165
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
