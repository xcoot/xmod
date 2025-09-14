.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider$$ExternalSyntheticLambda0;->f$1:F

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "accessibility_display_magnification_scale"

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 14
    .line 15
    invoke-static {v1, v2, p0, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
