.class public final Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDisplayId:I

.field public mIgnoreDuetoRecentsAnimation:Z

.field public mInputConfig:I

.field public mIsFocused:Z

.field public mIsPIPMenu:Z

.field public mPrivateFlags:I

.field public mShouldMagnify:Z

.field public mSystemBarInsetFrame:Landroid/graphics/Rect;

.field public final mTouchableRegionInScreen:Landroid/graphics/Region;

.field public final mTouchableRegionInWindow:Landroid/graphics/Region;

.field public mType:I

.field public mWindow:Landroid/os/IBinder;

.field public mWindowInfo:Landroid/view/WindowInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Region;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Region;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final isTouchable()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "(no window token)"

    .line 11
    .line 12
    :goto_0
    const-string v1, "A11yWindow=["

    .line 13
    .line 14
    const-string v2, ", displayId="

    .line 15
    .line 16
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", inputConfig=0x"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 31
    .line 32
    const-string v2, ", type="

    .line 33
    .line 34
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", privateFlag=0x"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    .line 48
    .line 49
    const-string v2, ", focused="

    .line 50
    .line 51
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ", shouldMagnify="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", ignoreDuetoRecentsAnimation="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", isTrustedOverlay="

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 85
    .line 86
    and-int/lit16 v1, v1, 0x100

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const/4 v1, 0x0

    .line 93
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", regionInScreen="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", touchableRegion="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", isPIPMenu="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", windowInfo="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p0, "]"

    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method
