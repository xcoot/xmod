.class public final Lcom/android/server/display/DisplayManagerService$PresentationDisplay;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public displayId:I

.field public packageName:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    .line 5
    iget v0, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 7
    iget v1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    .line 13
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 13
    mul-int/2addr p0, v0

    .line 14
    return p0
.end method
