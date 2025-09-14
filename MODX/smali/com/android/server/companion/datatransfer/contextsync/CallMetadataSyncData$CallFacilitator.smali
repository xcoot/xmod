.class public final Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mExtendedIdentifier:Ljava/lang/String;

.field public mIdentifier:Ljava/lang/String;

.field public mIsTel:Z

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    .line 10
    return-void
.end method
