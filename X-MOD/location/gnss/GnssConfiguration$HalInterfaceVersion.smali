.class public final Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AIDL_INTERFACE:I = 0x3


# instance fields
.field public final mMajor:I

.field public final mMinor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMinor:I

    .line 8
    return-void
.end method
