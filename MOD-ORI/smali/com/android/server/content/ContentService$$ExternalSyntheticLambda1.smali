.class public final synthetic Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/ContentService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/ContentService;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/content/ContentService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/content/ContentService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    check-cast p1, Landroid/content/SyncInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    xor-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    return p0
.end method
