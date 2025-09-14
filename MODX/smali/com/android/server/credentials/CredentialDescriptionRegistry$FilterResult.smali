.class public final Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCredentialEntries:Ljava/util/List;

.field public final mElementKeys:Ljava/util/Set;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mPackageName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mElementKeys:Ljava/util/Set;

    .line 8
    iput-object p3, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mCredentialEntries:Ljava/util/List;

    .line 10
    return-void
.end method
