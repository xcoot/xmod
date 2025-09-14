.class public abstract Lcom/samsung/accessory/manager/connectivity/Connectivity;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NOT_SUPPORT:[B


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabledInternal:Z

.field public mSessionState:I

.field public mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect()V
.end method

.method public abstract disable()Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract enable()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public isEnabledInternally()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    .line 2
    .line 3
    return p0
.end method

.method public abstract openNode()Z
.end method

.method public abstract sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
.end method

.method public abstract sendStopAuth()Z
.end method

.method public abstract sendStopUsbAuth()V
.end method

.method public abstract sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 2
    .line 3
    return-void
.end method
