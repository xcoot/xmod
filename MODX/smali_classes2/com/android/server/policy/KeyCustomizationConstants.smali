.class public abstract Lcom/android/server/policy/KeyCustomizationConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALL_KEYCODE_TYPE:[I

.field public static final EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

.field public static final NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

.field public static final SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

.field public static final SUPPORT_PRESS_TYPE_ALL:[I

.field public static final SUPPORT_PRESS_TYPE_BASIC:[I

.field public static final SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

.field public static final VOLD_DECRYPT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string/jumbo v0, "vold.decrypt"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x4

    .line 16
    const/16 v4, 0x8

    .line 17
    .line 18
    const/16 v5, 0x10

    .line 19
    .line 20
    const/4 v6, 0x6

    .line 21
    new-array v6, v6, [I

    .line 22
    .line 23
    fill-array-data v6, :array_0

    .line 24
    .line 25
    .line 26
    sput-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 27
    .line 28
    filled-new-array {v2, v3, v4}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    sput-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    .line 33
    .line 34
    filled-new-array {v1, v0, v5, v4, v3}, [I

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    .line 39
    .line 40
    filled-new-array {v3, v4}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

    .line 45
    .line 46
    const/16 v0, 0xd

    .line 47
    .line 48
    new-array v0, v0, [I

    .line 49
    .line 50
    fill-array-data v0, :array_1

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    .line 54
    .line 55
    filled-new-array {v2, v3}, [I

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    .line 60
    .line 61
    const-string v0, "com.sprint.sdcplus"

    .line 62
    .line 63
    const-string v1, "com.bell.ptt"

    .line 64
    .line 65
    const-string v2, "com.verizon.pushtotalkplus"

    .line 66
    .line 67
    const-string v3, "com.att.eptt"

    .line 68
    .line 69
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x3
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 4
        0x1a
        0xbb
        0x3
        0x4
        0x18
        0x19
        0x3f7
        0x437
        0x4f
        0x445
        0x446
        0x447
        0x448
    .end array-data
.end method
