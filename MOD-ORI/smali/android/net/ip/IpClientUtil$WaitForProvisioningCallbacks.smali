.class public Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;
.super Landroid/net/ip/IpClientCallbacks;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mCV:Landroid/os/ConditionVariable;

.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/ip/IpClientCallbacks;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/ConditionVariable;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 3
    .line 4
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 7
    .line 8
    return-object p0
.end method
