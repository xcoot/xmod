.class public final Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sIsFelicaAllowed:Z = true

.field public static sNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method
