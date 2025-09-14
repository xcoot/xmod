.class public abstract Lcom/android/server/asks/ADPOperation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 20
    move-result v1

    .line 21
    if-gt p1, v1, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public static isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1
    const-string p0, ""

    goto :goto_0

    .line 2
    :cond_0
    const-string p0, "^(\\d?\\d{4})\\d{2}(\\d{3})\\z"

    goto :goto_0

    .line 3
    :cond_1
    const-string p0, "^(\\d?\\d{6})\\d{3}\\z"

    goto :goto_0

    .line 4
    :cond_2
    const-string p0, "^(\\d?\\d{9})\\z"

    goto :goto_0

    .line 5
    :cond_3
    const-string p0, "^(\\d?\\d{4})\\d{5}\\z"

    .line 6
    :goto_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p1

    .line 9
    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method
