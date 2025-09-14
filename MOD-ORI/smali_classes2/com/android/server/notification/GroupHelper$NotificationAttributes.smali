.class public final Lcom/android/server/notification/GroupHelper$NotificationAttributes;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final flags:I

.field public final icon:Landroid/graphics/drawable/Icon;

.field public final iconColor:I

.field public final visibility:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Icon;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 11
    .line 12
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
    instance-of v1, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 15
    .line 16
    if-ne v3, v1, :cond_1

    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 19
    .line 20
    iget v3, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 21
    .line 22
    if-ne v1, v3, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget p0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 35
    .line 36
    iget p1, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 37
    .line 38
    if-ne p0, p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v0, v2

    .line 42
    :goto_0
    return v0

    .line 43
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method
