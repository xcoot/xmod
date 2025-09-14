.class public final Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;


# instance fields
.field public final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 6
    return-void
.end method
