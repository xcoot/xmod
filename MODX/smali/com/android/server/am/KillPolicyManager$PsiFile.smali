.class public final Lcom/android/server/am/KillPolicyManager$PsiFile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsEmptyFile:Z

.field public mSomeAvg10:D


# direct methods
.method public static getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, " "

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "="

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    array-length v0, p1

    .line 14
    if-le v0, p0, :cond_0

    .line 16
    aget-object v0, p1, p0

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    aget-object p0, p1, p0

    .line 26
    const-string p1, ""

    .line 28
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string p0, "0"

    .line 35
    return-object p0
.end method
