.class public final Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final pkgName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->uid:I

    .line 6
    iput-object p2, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->pkgName:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;

    .line 9
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->pkgName:Ljava/lang/String;

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object v2, p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->pkgName:Ljava/lang/String;

    .line 15
    if-nez v2, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->uid:I

    .line 20
    iget p1, p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->uid:I

    .line 22
    if-ne p0, p1, :cond_2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->uid:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "_"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->pkgName:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result p0

    .line 29
    return p0
.end method
