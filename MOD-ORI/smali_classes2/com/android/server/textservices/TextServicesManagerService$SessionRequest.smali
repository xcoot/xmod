.class public final Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public final mLocale:Ljava/lang/String;

.field public final mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field public final mSupportedAttributes:I

.field public final mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

.field public final mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mUid:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mSupportedAttributes:I

    .line 15
    .line 16
    return-void
.end method
