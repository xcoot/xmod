.class public final synthetic Lcom/android/server/notification/NotificationClassifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v0, "result : ID = "

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    .line 12
    .line 13
    const-string v2, "NotificationClassifier"

    .line 14
    .line 15
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-wide p0, p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    .line 19
    .line 20
    const-wide/16 v0, 0x1

    .line 21
    .line 22
    cmp-long p0, p0, v0

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method
