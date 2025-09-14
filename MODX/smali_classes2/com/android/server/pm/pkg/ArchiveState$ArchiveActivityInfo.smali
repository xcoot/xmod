.class public final Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIconBitmap:Ljava/nio/file/Path;

.field public final mMonochromeIconBitmap:Ljava/nio/file/Path;

.field public final mOriginalComponentName:Landroid/content/ComponentName;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    .line 5
    .line 6
    const-class v0, Landroid/annotation/NonNull;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 13
    .line 14
    const-class p1, Landroid/annotation/NonNull;

    .line 15
    .line 16
    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    .line 40
    .line 41
    iget-object v3, p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    .line 52
    .line 53
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 62
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    .line 30
    .line 31
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-int/2addr p0, v0

    .line 36
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ArchiveActivityInfo { title = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", originalComponentName = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", iconBitmap = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", monochromeIconBitmap = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " }"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
