.class public final Lcom/android/server/enterprise/email/AccountSMIMECertificate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

.field public final mPassword:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final sMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 11
    .line 12
    return-void
.end method
