.class public final synthetic Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;

    .line 6
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string p2, "android.app.role.WALLET"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->getPaymentDefaultPackageFromRoleManager()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->setPaymentDefaultPackage(Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method
