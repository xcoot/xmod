.class public final Lcom/android/server/chimera/ConservativePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lt v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object p2, p2, v0

    .line 7
    .line 8
    const-string v0, "-a"

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpQuotaPPN(Ljava/io/PrintWriter;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
