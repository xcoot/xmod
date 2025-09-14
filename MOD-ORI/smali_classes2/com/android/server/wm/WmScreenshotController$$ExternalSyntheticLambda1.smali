.class public final synthetic Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;[ZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WmScreenshotController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$1:[Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WmScreenshotController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$1:[Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$3:Z

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 17
    .line 18
    const/high16 v3, 0x100000

    .line 19
    .line 20
    and-int/2addr v0, v3

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasRelativeLayer()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget-boolean v0, v1, v3

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :goto_0
    move v3, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 45
    .line 46
    if-ne p1, v2, :cond_3

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    aput-boolean v4, v1, v3

    .line 52
    .line 53
    :cond_3
    :goto_1
    return v3
.end method
