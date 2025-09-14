.class public final Lcom/android/server/wm/utils/WmDisplayCutout;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;


# instance fields
.field public final mFrameSize:Landroid/util/Size;

.field public final mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 2
    .line 3
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 22
    .line 23
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 4
    .line 5
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WmDisplayCutout{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mFrameSize="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mFrameSize:Landroid/util/Size;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
