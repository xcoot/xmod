.class public final Lcom/android/server/asks/RETVALUE;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public SA:I

.field public eventNameForSA:Ljava/lang/String;

.field public isExecute:I

.field public morerules:Lcom/android/server/asks/MORERULES;

.field public policy:I

.field public status:I

.field public tagName:Ljava/lang/String;


# virtual methods
.method public final set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/asks/RETVALUE;->status:I

    .line 3
    iput p2, p0, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 5
    iput p3, p0, Lcom/android/server/asks/RETVALUE;->SA:I

    .line 7
    iput p4, p0, Lcom/android/server/asks/RETVALUE;->isExecute:I

    .line 9
    iput-object p5, p0, Lcom/android/server/asks/RETVALUE;->tagName:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/android/server/asks/RETVALUE;->eventNameForSA:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lcom/android/server/asks/RETVALUE;->morerules:Lcom/android/server/asks/MORERULES;

    .line 15
    return-void
.end method
