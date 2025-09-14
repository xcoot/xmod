.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mId:I

.field public final mName:Ljava/lang/String;

.field public final mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

.field public final mWindowLayers:[Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mWindowLayers:[Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Feature(\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    .line 19
    .line 20
    const/16 v1, 0x7d

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
