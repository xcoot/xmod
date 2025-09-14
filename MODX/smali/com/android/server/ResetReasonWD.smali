.class Lcom/android/server/ResetReasonWD;
.super Lcom/android/server/CommonPlatformResetReasonCode;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/ResetReasonCode;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public addCauseStackFromContexts(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, ""

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_5

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 34
    const-string v4, "!@"

    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x2

    .line 41
    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    :cond_1
    const-string v4, "*** FATAL"

    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v4

    .line 53
    const/4 v6, 0x1

    .line 54
    if-eqz v4, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/android/server/ResetReasonCode;->getCurrentPattern()Ljava/util/regex/Pattern;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 70
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const-string v4, "annotated stack trace:"

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_4

    .line 90
    const-string v4, "annotated"

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 95
    move-result v7

    .line 96
    if-lt v7, v5, :cond_4

    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 101
    move-result v5

    .line 102
    sub-int/2addr v5, v6

    .line 103
    const/4 v7, 0x0

    .line 104
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v5, ","

    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 123
    move-result v4

    .line 124
    sub-int/2addr v4, v6

    .line 125
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v2, ":\n"

    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    goto :goto_0

    .line 142
    :cond_4
    const-string v4, "    at"

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v2, "\n"

    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    goto/16 :goto_0

    .line 164
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-object v0
.end method

.method public addSuffix()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "sys_watchdog"

    .line 4
    return-object p0
.end method

.method public getPatternByReason()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    const-string v0, "PLATFORM WATCHDOG RESET"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/server/ResetReasonCode;->pattern:Ljava/util/regex/Pattern;

    .line 9
    return-object v0
.end method
