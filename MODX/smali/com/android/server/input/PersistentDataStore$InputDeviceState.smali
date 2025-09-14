.class public final Lcom/android/server/input/PersistentDataStore$InputDeviceState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CALIBRATION_NAME:[Ljava/lang/String;


# instance fields
.field public final mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

.field public final mKeyboardLayoutMap:Ljava/util/Map;

.field public mSelectedKeyboardLayouts:Ljava/util/Set;

.field public final mTouchCalibration:[Landroid/hardware/input/TouchCalibration;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string/jumbo v4, "y_scale"

    .line 4
    const-string/jumbo v5, "y_offset"

    .line 7
    const-string/jumbo v0, "x_scale"

    .line 10
    const-string/jumbo v1, "x_ymix"

    .line 13
    const-string/jumbo v2, "x_offset"

    .line 16
    const-string/jumbo v3, "y_xmix"

    .line 19
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Landroid/hardware/input/TouchCalibration;

    .line 7
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 9
    new-instance v0, Landroid/util/SparseIntArray;

    .line 11
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    .line 18
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 23
    return-void
.end method
