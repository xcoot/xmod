.class public Lcom/android/server/connectivity/Vpn$SystemServices;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public final getContentResolverAsUser(I)Landroid/content/ContentResolver;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
