.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

.field public final mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

.field public final mAborterUnrecognizedOpcode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

.field public final mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

.field public final mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

.field public final mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

.field public final mCecMessageHandlers:Landroid/util/SparseArray;

.field public final mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    .line 17
    new-instance v2, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    .line 23
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    .line 25
    new-instance v3, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    .line 27
    const/4 v4, 0x4

    .line 28
    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    .line 31
    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    .line 33
    new-instance v3, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-direct {v3, p0, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    .line 39
    new-instance v5, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-direct {v5, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;-><init>(I)V

    .line 45
    new-instance v6, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    .line 47
    const/4 v7, 0x1

    .line 48
    invoke-direct {v6, v7}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;-><init>(I)V

    .line 51
    new-instance v7, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

    .line 53
    const/4 v8, 0x1

    .line 54
    invoke-direct {v7, p0, v8}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    .line 57
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 59
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 61
    const/16 p1, 0x44

    .line 63
    invoke-virtual {p0, p1, v7}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 66
    iget p1, p2, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 68
    if-nez p1, :cond_0

    .line 70
    const/16 p1, 0x82

    .line 72
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 75
    const/16 p1, 0x85

    .line 77
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 80
    const/16 p1, 0x80

    .line 82
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 85
    const/16 p1, 0x81

    .line 87
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 90
    const/16 p1, 0x86

    .line 92
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 95
    const/16 p1, 0x36

    .line 97
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 100
    const/16 p1, 0x32

    .line 102
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 105
    const/16 p1, 0x45

    .line 107
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 110
    invoke-virtual {p0, v1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 113
    const/16 p1, 0x9d

    .line 115
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 118
    const/16 p1, 0x7e

    .line 120
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 123
    const/16 p1, 0x7a

    .line 125
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 128
    const/16 p1, 0x83

    .line 130
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 133
    const/16 p1, 0x91

    .line 135
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 138
    const/16 p1, 0x84

    .line 140
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 143
    const/16 p1, 0x8c

    .line 145
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 148
    const/16 p1, 0x46

    .line 150
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 153
    const/16 p1, 0x47

    .line 155
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 158
    const/16 p1, 0x87

    .line 160
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 163
    const/16 p1, 0x90

    .line 165
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 168
    const/16 p1, 0xa5

    .line 170
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 173
    const/16 p1, 0x8f

    .line 175
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 178
    const/16 p1, 0xff

    .line 180
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 183
    const/16 p1, 0x9f

    .line 185
    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 188
    const/16 p1, 0xa0

    .line 190
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 193
    const/16 p1, 0x72

    .line 195
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 198
    invoke-virtual {p0, v4, v3}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 201
    const/16 p1, 0xd

    .line 203
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 206
    const/16 p1, 0xa

    .line 208
    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 211
    const/16 p1, 0xf

    .line 213
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 216
    const/16 p1, 0xc0

    .line 218
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 221
    const/16 p1, 0xc5

    .line 223
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 226
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 228
    goto :goto_0

    .line 229
    :cond_0
    iput-object v5, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 231
    :goto_0
    return-void
.end method


# virtual methods
.method public final addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    return-void
.end method
