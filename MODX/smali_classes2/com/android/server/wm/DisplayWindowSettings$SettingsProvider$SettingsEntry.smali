.class public final Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDontMoveToTop:Ljava/lang/Boolean;

.field public mFixedToUserRotation:Ljava/lang/Integer;

.field public mForcedDensity:I

.field public mForcedHeight:I

.field public mForcedScalingMode:Ljava/lang/Integer;

.field public mForcedWidth:I

.field public mIgnoreDisplayCutout:Ljava/lang/Boolean;

.field public mIgnoreOrientationRequest:Ljava/lang/Boolean;

.field public mImePolicy:Ljava/lang/Integer;

.field public mIsHomeSupported:Ljava/lang/Boolean;

.field public mRemoveContentMode:I

.field public mShouldShowSystemDecors:Ljava/lang/Boolean;

.field public mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

.field public mUserRotation:Ljava/lang/Integer;

.field public mUserRotationMode:Ljava/lang/Integer;

.field public mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 3
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 6
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->setTo(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 27
    .line 28
    iget v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 33
    .line 34
    iget v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 39
    .line 40
    iget v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 41
    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 45
    .line 46
    iget v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 47
    .line 48
    if-ne v2, v3, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 111
    .line 112
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 121
    .line 122
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 131
    .line 132
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 141
    .line 142
    iget-object v3, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-eqz p0, :cond_2

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_2
    move v0, v1

    .line 162
    :goto_0
    return v0

    .line 163
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 12
    .line 13
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object v8, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 32
    .line 33
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    iget-object v10, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 40
    .line 41
    iget-object v11, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 42
    .line 43
    iget-object v12, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 44
    .line 45
    iget-object v13, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 46
    .line 47
    iget-object v14, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 48
    .line 49
    iget-object v15, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 54
    .line 55
    move-object/from16 v16, v1

    .line 56
    .line 57
    move-object/from16 v17, v0

    .line 58
    .line 59
    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 54
    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 62
    .line 63
    if-nez p0, :cond_0

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    :goto_0
    return p0
.end method

.method public final setTo(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 26
    .line 27
    move v0, v2

    .line 28
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 41
    .line 42
    move v0, v2

    .line 43
    :cond_2
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 44
    .line 45
    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 46
    .line 47
    if-eq v1, v3, :cond_3

    .line 48
    .line 49
    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 50
    .line 51
    move v0, v2

    .line 52
    :cond_3
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 53
    .line 54
    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 55
    .line 56
    if-eq v1, v3, :cond_4

    .line 57
    .line 58
    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 59
    .line 60
    move v0, v2

    .line 61
    :cond_4
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 62
    .line 63
    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 64
    .line 65
    if-eq v1, v3, :cond_5

    .line 66
    .line 67
    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 68
    .line 69
    move v0, v2

    .line 70
    :cond_5
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 83
    .line 84
    move v0, v2

    .line 85
    :cond_6
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 86
    .line 87
    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 88
    .line 89
    if-eq v1, v3, :cond_7

    .line 90
    .line 91
    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 92
    .line 93
    move v0, v2

    .line 94
    :cond_7
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_8

    .line 103
    .line 104
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 107
    .line 108
    move v0, v2

    .line 109
    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 110
    .line 111
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_9

    .line 118
    .line 119
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 122
    .line 123
    move v0, v2

    .line 124
    :cond_9
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_a

    .line 133
    .line 134
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 137
    .line 138
    move v0, v2

    .line 139
    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 140
    .line 141
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_b

    .line 148
    .line 149
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 152
    .line 153
    move v0, v2

    .line 154
    :cond_b
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_c

    .line 163
    .line 164
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 165
    .line 166
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 167
    .line 168
    move v0, v2

    .line 169
    :cond_c
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 170
    .line 171
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_d

    .line 178
    .line 179
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 180
    .line 181
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 182
    .line 183
    move v0, v2

    .line 184
    :cond_d
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 185
    .line 186
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_e

    .line 193
    .line 194
    iget-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 195
    .line 196
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 197
    .line 198
    move v0, v2

    .line 199
    :cond_e
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 200
    .line 201
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_f

    .line 208
    .line 209
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 210
    .line 211
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_f
    move v2, v0

    .line 215
    :goto_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SettingsEntry{mWindowingMode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mUserRotationMode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mUserRotation="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mForcedWidth="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mForcedHeight="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mForcedDensity="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", mForcedScalingMode="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", mRemoveContentMode="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", mShouldShowWithInsecureKeyguard="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", mShouldShowSystemDecors="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", mIsHomeSupported="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", mShouldShowIme="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", mFixedToUserRotation="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", mIgnoreOrientationRequest="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", mIgnoreDisplayCutout="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", mDontMoveToTop="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 p0, 0x7d

    .line 164
    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0
.end method
