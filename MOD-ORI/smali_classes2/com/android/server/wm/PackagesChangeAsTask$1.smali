.class public final Lcom/android/server/wm/PackagesChangeAsTask$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayCutoutController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayCutoutController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PackagesChangeAsTask$1;->this$0:Lcom/android/server/wm/DisplayCutoutController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDumpInTask(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PackagesChangeAsTask$1;->this$0:Lcom/android/server/wm/DisplayCutoutController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget p0, p1, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "mCutoutPolicy="

    .line 15
    .line 16
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget p0, p1, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    .line 20
    .line 21
    if-eqz p0, :cond_3

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    if-eq p0, p1, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    if-eq p0, p1, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p0, "HideCameraCutout"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string p0, "OverlapWithTheCameraCutout"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const-string p0, "AppDefault"

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public final updateValueToTask(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PackagesChangeAsTask$1;->this$0:Lcom/android/server/wm/DisplayCutoutController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayCutoutController;->getPolicy(ILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_1
    iput p0, p1, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    .line 27
    .line 28
    return-void
.end method
