.class public final Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAndroidKeycode:I

.field public final mCecKeycodeAndParams:[B

.field public final mIsRepeatable:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    .line 8
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 7
    sget-object p3, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    return-void
.end method

.method public constructor <init>(II[BZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    .line 3
    iput-boolean p4, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    .line 4
    array-length p1, p3

    const/4 p4, 0x1

    add-int/2addr p1, p4

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    .line 5
    array-length p0, p3

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/lit16 p0, p2, 0xff

    int-to-byte p0, p0

    .line 6
    aput-byte p0, p1, v0

    return-void
.end method
