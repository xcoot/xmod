.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda27;->f$1:Ljava/util/Set;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda27;->f$1:Ljava/util/Set;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 15
    .line 16
    const/high16 v1, 0x100000

    .line 17
    .line 18
    and-int/2addr v0, v1

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasRelativeLayer()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 39
    .line 40
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 41
    .line 42
    const/16 v0, 0x7d0

    .line 43
    .line 44
    if-lt p1, v0, :cond_1

    .line 45
    .line 46
    const/16 v0, 0xbb7

    .line 47
    .line 48
    if-gt p1, v0, :cond_1

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method
