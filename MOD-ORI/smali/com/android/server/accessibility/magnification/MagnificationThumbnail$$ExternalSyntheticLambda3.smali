.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;->f$2:F

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;->f$3:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;->f$1:F

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;->f$2:F

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;->f$3:F

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->updateThumbnailMainThread(FFF)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
