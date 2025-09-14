.class public final Lcom/android/server/display/PersistentDataStore$DisplayState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mColorMode:I

.field public final mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

.field public mHeight:I

.field public final mPerUserBrightness:Landroid/util/SparseArray;

.field public mRefreshRate:F

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 13
    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 18
    return-void
.end method


# virtual methods
.method public final getBrightness(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 3
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 27
    const/4 p1, -0x1

    .line 28
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Float;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 37
    move-result p1

    .line 38
    :cond_0
    return p1
.end method
