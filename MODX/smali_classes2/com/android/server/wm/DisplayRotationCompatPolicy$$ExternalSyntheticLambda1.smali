.class public final synthetic Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
