.class public final synthetic Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
