.class public interface abstract Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final DNS_HEALTH_RESULT_OK:I = 0x0

.field public static final DNS_HEALTH_RESULT_TIMEOUT:I = 0xff

.field public static final HASH:Ljava/lang/String; = "882638dc86e8afd0924ecf7c28db6cce572f7e7d"

.field public static final PREFIX_OPERATION_ADDED:I = 0x1

.field public static final PREFIX_OPERATION_REMOVED:I = 0x2

.field public static final VALIDATION_RESULT_FAILURE:I = 0x2

.field public static final VALIDATION_RESULT_SUCCESS:I = 0x1

.field public static final VERSION:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x24

    .line 3
    const/16 v1, 0x2e

    .line 5
    const-string v2, "android$net$resolv$aidl$IDnsResolverUnsolicitedEventListener"

    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDnsHealthEvent(Landroid/net/resolv/aidl/DnsHealthEventParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNat64PrefixEvent(Landroid/net/resolv/aidl/Nat64PrefixEventParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPrivateDnsValidationEvent(Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
