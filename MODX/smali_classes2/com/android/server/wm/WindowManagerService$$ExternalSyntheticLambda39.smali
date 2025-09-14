.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/wm/WindowState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda39;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda39;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda39;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda39;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :cond_0
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method
