.class public final Lcom/android/server/hdmi/ReportFeaturesMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCecVersion:I

.field public final mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;


# direct methods
.method public constructor <init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V
    .locals 6

    .line 1
    const/16 v3, 0xa6

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    .line 9
    .line 10
    .line 11
    iput p4, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    .line 12
    .line 13
    iput-object p5, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    .line 14
    .line 15
    return-void
.end method
